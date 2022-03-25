import 'package:flutter/material.dart';
import 'view/medication-details/add_medication_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: AddMedication1(),
        ),
      ),
    );
  }
}