import 'package:flutter/material.dart';
import 'view/medication-details/add_medication_1.dart';
import 'view/medication-details/add_medication_2.dart';
import 'view/medication-details/add_medication_3.dart';
import 'view/medication-details/medication_list.dart';
import 'view/medication-details/journal_history.dart';
import 'view/medication-details/medication_information_profile.dart';
import 'view/medication-details/nearby_pharmacy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MedicationList(),
        ),
      ),
    );
  }
}