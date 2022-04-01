import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'medication_list_ListView.dart';
import 'journal_history.dart';
import '../medication-details/add_medication_1.dart';

class MedicationList extends StatefulWidget {
  const MedicationList({Key? key}) : super(key: key);

  @override
  _MedicationListState createState() => _MedicationListState();
}

class _MedicationListState extends State<MedicationList> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      // backgroundColor: Colors.white,
      // body: SafeArea(
      //   child: GestureDetector(
      //     onTap: () => FocusScope.of(context).unfocus(),
      //     child: Padding(
      //       padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
      //       child: 
            body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Medication List',
                        style: GoogleFonts.fredokaOne(color: Colors.black,fontSize: 28,fontWeight: FontWeight.normal,),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Text(
                          'Active Meds',
                          style: GoogleFonts.signikaNegative(color: Colors.black,fontWeight: FontWeight.w300,),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                            child: IconButton(
                              iconSize: 50,
                              color: Colors.black,
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {
                                //Delete Records
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      //Medication Details
                      const MedicationListView(),

                      //Button Pannel
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            
                            //History Button
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 130, 0),
                              child: (
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF809BCE),
                                        minimumSize: const Size(125,40),
                                        elevation: 3,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                        )
                                      ),
                                    onPressed: (){
                                      Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const JournalHistoryWidget()));
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.history,
                                          size: 18,
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                          child: Text(
                                            'HISTORY',
                                            style: GoogleFonts.signikaNegative(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500,),
                                          )
                                        ),
                                      ],
                                    )),
                                  ],
                                )
                              ),
                            ),

                            //Edit Button
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF809BCE),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                                    child: IconButton(
                                      iconSize: 40,
                                      color: const Color(0x00FCFCFC),
                                      icon: const Icon(
                                        Icons.edit_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        //Edit Records
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            //Add Button
                            Material(
                              color: Colors.transparent,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF809BCE),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                                  child: IconButton(
                                    iconSize: 40,
                                    color: const Color(0x00FCFCFC),
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => const AddMedication1()));
                                      //Add Records
                                    },
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ],
                  ),
                // ),
              ]
            ),
          ),
      //   ),
      // ))
    );
  }
}