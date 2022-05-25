import 'package:duglinpub_menu/drawer/drawer.dart';
import 'package:duglinpub_menu/screens/bar/bar.dart';
import 'package:duglinpub_menu/utils/colors.dart';
import 'package:duglinpub_menu/screens/kuh/recipe.dart';
import 'package:duglinpub_menu/views/rules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title:  const Center(
          child: Text(
            "Dublin Pub ", 
            textAlign: TextAlign.center,
            style: TextStyle(
              color: primaryColor,
              fontSize: 25
            ),
            ),
          ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFE1DAD2),
          child: Column(
            
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BarPage()));
                },
                child: Container(
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
                      // IMG_7004.PNG
                      image: const AssetImage('images/IMG_7004.PNG'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: const [
                      Align(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "Барное меню",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 7,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QuizPage()));
                },
                child: Container(
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
                      image: const AssetImage('images/1.png'),
                      // image: const NetworkImage('https://immigrantinvest.com/wp-content/uploads/2016/12/50-european-dishes.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: const [
                      Align(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "Кухонное меню",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 7,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RulesScreen()));
                },
                child: Container(
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
                      // image: const AssetImage('images/IMG_7004.PNG'),
                      image: const AssetImage('images/rules.png'),
                      // image: const NetworkImage('https://firebasestorage.googleapis.com/v0/b/dublinpub-a39c8.appspot.com/o/photo_2022-05-17_12-15-42.jpg?alt=media&token=3ac4154e-05b9-41a2-b401-182ff557d92f'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: const [
                      Align(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "Все правилы - Dublin Pub",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w700
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 7,),
              
              const SizedBox(
                height: 220,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 22,),
                width: MediaQuery.of(context).size.width,
                height: 40,            
                // color: const Color.fromARGB(255, 40, 99, 42),
                decoration:  const BoxDecoration(
                  color: Color(0xFF046936), //new Color.fromRGBO(255, 0, 0, 0.0),
                  borderRadius:  BorderRadius.only(
                    topLeft:  Radius.circular(40.0),
                    topRight: Radius.circular(40.0))
                ),
                child: const Align(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      "Обслуживание 15%",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
