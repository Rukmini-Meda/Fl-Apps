import 'package:flutter/material.dart';
import 'home_screen.dart';

// Lambda function to create anonymous functions
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // In Dart 2, you dont need to return using new keyword
    return new MaterialApp(
      title: "Math Genius",
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      home: new HomePage()
    );
  }
}