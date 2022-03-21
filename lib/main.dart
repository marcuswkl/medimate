import 'package:flutter/material.dart';
import 'package:medimate/view/medication-details/medication_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedicationList(),
    );
  }
}