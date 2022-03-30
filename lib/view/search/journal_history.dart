import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'dart:async';

class JournalHistoryWidget extends StatefulWidget {
  const JournalHistoryWidget({Key? key}) : super(key: key);

  @override
  _JournalHistoryWidgetState createState() => _JournalHistoryWidgetState();
}

class _JournalHistoryWidgetState extends State<JournalHistoryWidget> {
  // String dropDownValue;
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // Selecting date method
  _selectDate(BuildContext context1) async {
    final DateTime? startPicked = await showDatePicker(
      context: context1,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2050),
    );
    if (startPicked != null && startPicked != startDate){
      setState(() {
        startDate = startPicked;
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
          child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFF809BCE),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: IconButton(
                          iconSize: 60,
                          color: const Color(0x00FCFCFC),
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            //   Navigator.push(context,
                            //   MaterialPageRoute(builder: (context) => Subnav(data: Data(1))));
                            // },
                            Navigator.pop(context);},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'History',
                          style: GoogleFonts.fredokaOne(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        width: 155,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: const Color(0xFF809BCE),
                            width: 3,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.black,
                                size: 25,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => _selectDate(context),
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
                                primary: Colors.white,
                                elevation: 0,
                              ),
                            ),
                            // widget.dropdownDatePicker,
                            // ElevatedButton(
                            //   onPressed: () => setState(
                            //         () => (debugPrint('Rebuild UI.')),
                            //   ),
                            //   child: const Text('Print current date.'),
                            // ),
                            // FlutterFlowDropDown(
                            //   options: ['Option 1'].toList(),
                            //   onChanged: (val) =>
                            //       setState(() => dropDownValue = val),
                            //   width: 140,
                            //   height: 50,
                            //   textStyle: GoogleFonts.signikaNegative(
                            //     color: Colors.black,
                            //     fontSize: 18,
                            //     fontWeight: FontWeight.normal,
                            //   ),
                            //   hintText: '11/3/2022',
                            //   fillColor: Colors.white,
                            //   elevation: 2,
                            //   borderColor: Colors.transparent,
                            //   borderWidth: 0,
                            //   borderRadius: 0,
                            //   margin:
                            //   const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            //   hidesUnderline: true,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.64,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Text(
                        'Medication',
                        style: GoogleFonts.signikaNegative(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Coughing Medicine',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Text(
                                        'Benzonatate',
                                        style: GoogleFonts.signikaNegative(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 125,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF95B8D1),
                                              borderRadius:
                                              BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Text(
                                                'Before Breakfast',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.signikaNegative(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight:
                                                  FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 0, 0),
                                            child: Container(
                                              width: 70,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF95B8D1),
                                                borderRadius:
                                                BorderRadius.circular(16),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(5, 5, 5, 5),
                                                child: Text(
                                                  '8:00 AM',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.signikaNegative(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF809BCE),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 11, 0, 0),
                                      child: Text(
                                        'Taken',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.signikaNegative(
                                          color: const Color(0xFFD1EBDE),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Panadol',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Text(
                                        '-',
                                        style: GoogleFonts.signikaNegative(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 6, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 125,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF95B8D1),
                                              borderRadius:
                                              BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5, 5, 5, 5),
                                              child: Text(
                                                'After Breakfast',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.signikaNegative(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight:
                                                  FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 0, 0),
                                            child: Container(
                                              width: 75,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFF95B8D1),
                                                borderRadius:
                                                BorderRadius.circular(16),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(5, 5, 5, 5),
                                                child: Text(
                                                  '10:30 AM',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.signikaNegative(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF809BCE),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 11, 0, 0),
                                      child: Text(
                                        'Skipped',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.signikaNegative(
                                          color: const Color(0xFFEAC4D5),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.71,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Text(
                        'Journal',
                        style: GoogleFonts.signikaNegative(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Symptoms: ',
                                  style: GoogleFonts.signikaNegative(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Fever, Sore Throat, Flu',
                                    style: GoogleFonts.signikaNegative(
                                      color: const Color(0x99000000),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Note: ',
                                    style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing.',
                                    style: GoogleFonts.signikaNegative(
                                      color: const Color(0x99000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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

