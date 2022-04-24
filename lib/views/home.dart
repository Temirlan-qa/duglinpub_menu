import 'package:duglinpub_menu/drawer/drawer.dart';
import 'package:duglinpub_menu/utils/colors.dart';
import 'package:duglinpub_menu/views/recipe.dart';
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
        backgroundColor: Colors.green,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.restaurant_menu,
              color: primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Dublin Pub Menu",
              style: TextStyle(color: primaryColor),
            ),
          ],
        ),
      ),
      body: const QuizPage(),
    );
  }
}
