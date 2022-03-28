import 'package:flutter/material.dart';
import 'view/Medication_Schedule/Schedule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      title: 'Flutter Demo',
      home: Schedule(),
    );
  }
}
