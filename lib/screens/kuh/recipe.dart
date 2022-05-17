import 'dart:async';

import 'package:duglinpub_menu/drawer/drawer.dart';
import 'package:duglinpub_menu/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:duglinpub_menu/screens/kuh/recipe_db.dart';

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
    _quizQuery = _database.reference().child("bar");

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
      drawer: const DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF046936),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Icon(
            //   Icons.restaurant_menu,
            //   color: primaryColor,
            // ),
            // SizedBox(
            //   width: 10,
            // ),
            Text(
              "Кухонное меню",
              style: TextStyle(color: primaryColor),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFFE1DAD2),
        child: ListView.builder(
          itemCount: _quizListNew.length,
          itemBuilder: (context, i) {
            return quizItem(context, _quizListNew[i]);
          }
        ),
      ),
    );
  }

  Widget quizItem(BuildContext context, QuizDb barDb) {
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
          image: NetworkImage(barDb.photo),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children:[
          Align(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Column(
                children: [
                  const SizedBox(height: 5,),
                  Text(
                    barDb.title,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            alignment: Alignment.topLeft,
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
                      // const Icon(
                      //   Icons.attach_money_outlined,
                      //   color: Colors.yellow,
                      //   size: 18,
                      // ),
                      const SizedBox(width: 7),
                      Text(
                        barDb.price.replaceAll(" ", "\n").replaceAll('_', ' '),
                        style: const TextStyle(fontSize: 16),
                      ),
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
                      // const Icon(
                      //   Icons.schedule,
                      //   color: Colors.green,
                      //   //color: Colors.yellow,
                      //   size: 18,
                      // ),
                      const SizedBox(width: 7),
                      Text(
                        barDb.time.replaceAll(" ", "\n").replaceAll('_', ' '),
                        style: const TextStyle(fontSize: 16),
                      ),
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
