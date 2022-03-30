import 'package:flutter/material.dart';
import 'view/home/homepage.dart';
import 'view/home/side_effects_survey.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medimate',
      home: Column(),
    );
  }
}
