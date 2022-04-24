import 'dart:async';

import 'package:duglinpub_menu/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:duglinpub_menu/views/recipe_db.dart';

class QuizPage extends StatefulWidget {
  final String dbName;
  const QuizPage({Key key, this.dbName}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final quiz = <QuizDb>[];
  List<QuizDb> _quizListNew;
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StreamSubscription<Event> _onQuizAddedSubscription;
  StreamSubscription<Event> _onQuizChangedSubscription;
  Query _quizQuery;

  @override
  void initState() {
    super.initState();

    _quizListNew = new List();
    _quizQuery = _database.reference().child("recipe");

    _onQuizAddedSubscription = _quizQuery.onChildAdded.listen(onEntryAdded);
    _onQuizChangedSubscription =
        _quizQuery.onChildChanged.listen(onEntryChanged);
  }

  onEntryAdded(Event event) {
    setState(() {
      _quizListNew.add(QuizDb.fromSnapshot(event.snapshot));
    });
  }

  onEntryChanged(Event event) {
    print('onEntryChanged');

    var oldEntry = _quizListNew.singleWhere((entry) {
      return entry.key == event.snapshot.key;
    });

    setState(() {
      _quizListNew[_quizListNew.indexOf(oldEntry)] =
          QuizDb.fromSnapshot(event.snapshot);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _quizListNew.length,
          itemBuilder: (context, i) {
            return quizItem(context, _quizListNew[i]);
          }),
    );
  }

  Widget quizItem(BuildContext context, QuizDb quizDb) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: mobileBackgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow:[
          BoxShadow(
            color: mobileBackgroundColor.withOpacity(0.6),
            offset: const Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),  
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            mobileBackgroundColor.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: NetworkImage(quizDb.photo),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children:[
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                quizDb.title,
                style: const TextStyle(
                  fontSize: 19,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            alignment: Alignment.center,
          ),

          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: mobileBackgroundColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.attach_money_outlined,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      const SizedBox(width: 7),
                      Text(quizDb.price),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: mobileBackgroundColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: Colors.green,
                        //color: Colors.yellow,
                        size: 18,
                      ),
                      const SizedBox(width: 7),
                      Text(quizDb.time),
                    ],
                  ),
                )
              ],
            ),
            alignment: Alignment.bottomLeft,
          ),



        ],
      ),
    );
  }
}
