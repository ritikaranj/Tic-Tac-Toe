import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tic tac toe',
      debugShowCheckedModeBanner: false,
     // theme: ThemeData(
       // primarySwatch: Colors.purple,
      //),
      home: Homepage(),
    );
  }
}

