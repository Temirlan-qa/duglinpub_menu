import 'package:duglinpub_menu/views/home.dart';
import 'package:duglinpub_menu/views/recipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dublin Pub Menu",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white)
        ),
      ),
      home: HomePage(),
    );
  }
}