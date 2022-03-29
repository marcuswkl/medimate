import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'add_medication_2.dart';

class AddMedication3 extends StatefulWidget {
  const AddMedication3({Key? key}) : super(key: key);

  @override
  _AddMedication3State createState() => _AddMedication3State();
}

class _AddMedication3State extends State<AddMedication3> {
  String? dropDownValue1 = 'Once a week';
  String? dropDownValue2 = 'Once daily';
  String? dropDownValue3 = 'g';
  late TextEditingController formInputController;
  String? dropDownValue4 = '5 minutes before';
  //late DateTime selectedDate = DateTime.now();
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    formInputController = TextEditingController();
  }

  // Selecting start date method
  _selectStartDate(BuildContext context1) async {
    final DateTime? startPicked = await showDatePicker(
      context: context1,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2050),
    );
    if (startPicked != null && startPicked != startDate && (startPicked.isAtSameMomentAs(DateTime.now()) || startPicked.isAfter(DateTime.now()))){
      setState(() {
        startDate = startPicked;
      });
    }
  }

  // Selecting end date method
  _selectEndDate(BuildContext context2) async {
    final DateTime? endPicked = await showDatePicker(
      context: context2,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2050),
    );
    if (endPicked != null && endPicked != endDate && (endPicked.isAtSameMomentAs(startDate) || endPicked.isAfter(startDate))){
      setState(() {
        endDate = endPicked;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // Back button
                        Material(
                          color: Colors.transparent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              color: const Color(0xFF809BCE),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                              child: IconButton(
                                iconSize: 60,
                                color: const Color(0x00FCFCFC),
                                icon: const Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const AddMedication2()));
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'Add Medication',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.fredokaOne(
                                    color: Colors.black,
                                    fontSize: 22,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                '[3/3] : Scheduling Details',
                                style: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                        fontSize: 18,
                                        ),

                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Text(
                                        'STEP 1: Duration',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                              'Start Date',
                                              style: GoogleFonts.signikaNegative(
                                                      color: const Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.normal,
                                                      ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                              'End Date',
                                              style: GoogleFonts.signikaNegative(
                                                      color: const Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.normal,
                                                      ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width * 0.43,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFE7E0EC),
                                                borderRadius:BorderRadius.circular(8),
                                                border: Border.all(
                                                  color: const Color(0xFFCFD4DB),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 12, 5),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  
                                                  children: <Widget>[
                                                    ElevatedButton(
                                                      onPressed: () => _selectStartDate(context), 
                                                      child: 
                                                        Text(
                                                          "$startDate".split(' ')[0],
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                        ),
                                                      style: ElevatedButton.styleFrom(
                                                        primary: const Color(0xFFE7E0EC),
                                                        elevation: 0,
                                                      ),
                                                    ),
                                                    const Icon(
                                                      Icons.date_range_outlined,
                                                      color: Color(0xFF57636C),
                                                      size: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.43,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFE7E0EC),
                                              borderRadius:BorderRadius.circular(8),
                                              border: Border.all(
                                                color: const Color(0xFFCFD4DB),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 12, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                    ElevatedButton(
                                                      onPressed: () => _selectEndDate(context), 
                                                      child: 
                                                        Text(
                                                          "$endDate".split(' ')[0],
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                        ),
                                                      style: ElevatedButton.styleFrom(
                                                        primary: const Color(0xFFE7E0EC),
                                                        elevation: 0,
                                                      ),
                                                    ),
                                                    const Icon(
                                                      Icons.date_range_outlined,
                                                      color: Color(0xFF57636C),
                                                      size: 24,
                                                    ),
                                                  ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Text(
                                        'STEP 2: Frequency of Intake (PER WEEK)',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ),

                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                      child: Container(
                                              width: 500,
                                              height: 100,
                                              constraints: BoxConstraints(
                                                maxWidth: MediaQuery.of(context).size.width * 0.89,
                                                maxHeight: 50,
                                              ),
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFE7E0EC),
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                                                child: DropdownButton<String>(
                                                    value: dropDownValue1,
                                                    icon: const Icon(Icons.keyboard_arrow_down),
                                                    items: <String>[
                                                      'Once a week',
                                                      'Twice a week',
                                                      '3 days a week',
                                                      '4 days a week',
                                                      '5 days a week',
                                                      '6 days a week',
                                                      '7 days a week',
                                                      'Custom'].map<DropdownMenuItem<String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                    onChanged: (String? val) {
                                                      setState(() {
                                                        dropDownValue1 = val!;
                                                      });
                                                    },
                                                    // height: 35,
                                                    style: GoogleFonts.signikaNegative(
                                                      color: Colors.black,
                                                    ),
                                                    hint: const Text('Choose Frequency of Intake Per Week'),
                                                    dropdownColor:const Color(0xFFE7E0EC),
                                                    focusColor: Colors.red,
                                                    isExpanded: true,
                                                    //margin: EdgeInsetsDirectional.fromSTEB(12,4,12,4),
                                                    elevation: 2,
                                                    underline: Container(
                                                      color: const Color(0xFFE7E0EC),
                                                    )
                                                    // hidesUnderline: true,
                                                    ),
                                              ),
                                            ),

                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Text(
                                        'STEP 3: Frequency of Intake (PER DAY)',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                      child: Container(
                                              width: 500,
                                              height: 100,
                                              constraints: BoxConstraints(
                                                maxWidth: MediaQuery.of(context).size.width * 0.89,
                                                maxHeight: 50,
                                              ),
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFE7E0EC),
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                                                child: DropdownButton<String>(
                                                    value: dropDownValue2,
                                                    icon: const Icon(Icons.keyboard_arrow_down),
                                                    items: <String>[
                                                      'Once daily',
                                                      'Twice daily',
                                                      '3 times a day',
                                                      '4 times a day',
                                                      'Custom'].map<DropdownMenuItem<String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                    onChanged: (String? val) {
                                                      setState(() {
                                                        dropDownValue2 = val!;
                                                      });
                                                    },
                                                    // height: 35,
                                                    style: GoogleFonts.signikaNegative(
                                                      color: Colors.black,
                                                    ),
                                                    hint: const Text('Choose Frequency of Intake Per Day'),
                                                    dropdownColor:const Color(0xFFE7E0EC),
                                                    focusColor: Colors.red,
                                                    isExpanded: true,
                                                    //margin: EdgeInsetsDirectional.fromSTEB(12,4,12,4),
                                                    elevation: 2,
                                                    underline: Container(
                                                      color: const Color(0xFFE7E0EC),
                                                    )
                                                    // hidesUnderline: true,
                                                    ),
                                              ),
                                            ),
                                   
                                   ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Text(
                                        'STEP 4: Prescribed Dosage per Intake',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ), 
                
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 15, 0),
                                        child: TextFormField(
                                          controller: formInputController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Enter Value',
                                            labelStyle: GoogleFonts.signikaNegative(
                                                          color: const Color(0xFF57636C),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.normal,
                                                          ), 
                          
                                            hintStyle: GoogleFonts.signikaNegative(
                                                        color: const Color(0xFF57636C),
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.normal,
                                                        ), 
                            
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFDBE2E7),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFDBE2E7),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor: const Color(0xFFE7E0EC),
                                            contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                            suffixIcon: const Icon(
                                              Icons.medical_services_rounded,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          ),
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF1D2429),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  ), 

                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                      child: Container(
                                              width: 500,
                                              height: 100,
                                              constraints: BoxConstraints(
                                                maxWidth: MediaQuery.of(context).size.width * 0.2,
                                                maxHeight: 50,
                                              ),
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFE7E0EC),
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                                                child: DropdownButton<String>(
                                                    value: dropDownValue3,
                                                    icon: const Icon(Icons.keyboard_arrow_down),
                                                    items: <String>[
                                                      'g', 
                                                      'mg', 
                                                      'mcg', 
                                                      'IU', 
                                                      'mEq'].map<DropdownMenuItem<String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                    onChanged: (String? val) {
                                                      setState(() {
                                                        dropDownValue3 = val!;
                                                      });
                                                    },
                                                    // height: 35,
                                                    style: GoogleFonts.signikaNegative(
                                                      color: Colors.black,
                                                    ),
                                                    dropdownColor:const Color(0xFFE7E0EC),
                                                    focusColor: Colors.red,
                                                    isExpanded: true,
                                                    //margin: EdgeInsetsDirectional.fromSTEB(12,4,12,4),
                                                    elevation: 2,
                                                    underline: Container(
                                                      color: const Color(0xFFE7E0EC),
                                                    )
                                                    // hidesUnderline: true,
                                                    ),
                                              ),
                                            ), 

                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Text(
                                        'STEP 5: Notification',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ), 
                                       
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 10, 0),
                                      child: Container(
                                              width: 500,
                                              height: 100,
                                              constraints: BoxConstraints(
                                                maxWidth: MediaQuery.of(context).size.width * 0.72,
                                                maxHeight: 50,
                                              ),
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFE7E0EC),
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                                                child: DropdownButton<String>(
                                                    value: dropDownValue4,
                                                    icon: const Icon(Icons.keyboard_arrow_down),
                                                    items: <String>[
                                                      '5 minutes before',
                                                      '10 minutes before',
                                                      '15 minutes before',
                                                      '20 minutes before',
                                                      '30 minutes before',
                                                      '45 minutes before',
                                                      '1 hour before',
                                                      'Custom'].map<DropdownMenuItem<String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                    onChanged: (String? val) {
                                                      setState(() {
                                                        dropDownValue4 = val!;
                                                      });
                                                    },
                                                    // height: 35,
                                                    style: GoogleFonts.signikaNegative(
                                                      color: Colors.black,
                                                    ),
                                                    hint: const Text('Choose Notification Period'),
                                                    dropdownColor:const Color(0xFFE7E0EC),
                                                    focusColor: Colors.red,
                                                    isExpanded: true,
                                                    //margin: EdgeInsetsDirectional.fromSTEB(12,4,12,4),
                                                    elevation: 2,
                                                    underline: Container(
                                                      color: const Color(0xFFE7E0EC),
                                                    )
                                                    // hidesUnderline: true,
                                                    ),
                                              ),
                                            ),
                                

                                    ),
                                   Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                                      child: IconButton(
                                        iconSize: 40,
                                        color: Colors.white,
                                        icon: const Icon(
                                          Icons.add_circle,
                                          color: Color(0xFF770FC0),
                                          //size: 30,
                                        ),
                                        onPressed: () {},
                                        ),
                                      ),
                                    ),
                                      
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: const Color(0xFF809BCE),
                                              minimumSize: const Size(300,40),
                                              elevation: 5,
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              )
                                            ),
                                            onPressed: (){},
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                  child: Text(
                                                    'SAVE SCHEDULE',
                                                    style: GoogleFonts.signikaNegative(
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.normal,
                                                            ),
                                                    )
                                                  ),
                                              ],
                                            ),
                                          ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}