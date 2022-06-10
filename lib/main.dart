import 'package:flutter/material.dart';
import 'package:pizza_time/homepage.dart';
import 'package:pizza_time/add_pizza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza market',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),

      ),
      home: const MyHomePage(title: 'Pizza Market'),
    );
  }
}


