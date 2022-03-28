import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_medication_2.dart';

class AddMedication1 extends StatefulWidget {
  const AddMedication1({Key? key}) : super(key: key);

  @override
  _AddMedication1State createState() => _AddMedication1State();
}

class _AddMedication1State extends State<AddMedication1> {
  late TextEditingController formInputController1;
  late TextEditingController formInputController2;
  late TextEditingController formInputController3;
  late TextEditingController formInputController4;
  String? dropDownValue1 = 'Pills';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    formInputController1 = TextEditingController();
    formInputController2 = TextEditingController();
    formInputController3 = TextEditingController();
    formInputController4 = TextEditingController();
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                  //Navigator.push(context,
                                  //MaterialPageRoute(builder: (context) => const MedicationResultWidget()));
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
                            //FlutterFlowTheme.of(context).bodyText1.override(
                                      //fontFamily: 'Fredoka One',
                                      //color: Colors.black,
                                      //fontSize: 22,),
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
                                '[1/3] : General Details',
                                style: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                        fontSize: 18,
                                        ),
                                //FlutterFlowTheme.of(context).bodyText1.override(
                                      //fontFamily: 'Signika Negative',
                                      //color: Colors.black,
                                      //fontSize: 18,),
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
                                        'STEP 1: Medication Name',
                                        style: GoogleFonts.signikaNegative(
                                          color: Colors.black,
                                          ),
                                        //FlutterFlowTheme.of(context).bodyText1.override(
                                              //fontFamily: 'Signika Negative',
                                              //color: Colors.black,
                                              //fontWeight: FontWeight.w600,),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                        child: TextFormField(
                                          obscureText: false,
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF57636C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  ),
                                          decoration: InputDecoration(
                                            //FlutterFlowTheme.of(context).bodyText1.override(
                                                          //fontFamily:'Signika Negative',
                                                          //color: const Color(0xFF57636C),
                                                          //fontSize: 14,
                                                          //fontWeight: FontWeight.normal,),
                                            hintText: 'Enter Medication Name',
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
                                          ),
                                          //FlutterFlowTheme.of(context).bodyText1.override(
                                                //fontFamily: 'Signika Negative',
                                                //color: const Color(0xFF1D2429),
                                                //fontSize: 14,
                                                //fontWeight: FontWeight.normal,),
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
                                        'STEP 2: Medication Nickname (optional)',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ),
                                        //FlutterFlowTheme.of(context).bodyText1.override(
                                              //fontFamily: 'Signika Negative',
                                              //color: Colors.black,
                                              //fontWeight: FontWeight.w600,),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                        child: TextFormField(
                                          obscureText: false,
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF57636C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  ),
                                          decoration: InputDecoration(
                                                //FlutterFlowTheme.of(context).bodyText1.override(
                                                      //fontFamily: 'Signika Negative',
                                                      //color: const Color(0xFF57636C),
                                                      //fontSize: 14,
                                                      //fontWeight: FontWeight.normal,),
                                            hintText: 'Enter Medication Nickname',
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
                                          ),
                                          //FlutterFlowTheme.of(context).bodyText1.override(
                                                //fontFamily: 'Signika Negative',
                                                //color: const Color(0xFF1D2429),
                                                //fontSize: 14,
                                                //fontWeight: FontWeight.normal,),
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
                                        'STEP 3: Medication Type',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ),
                                        //FlutterFlowTheme.of(context).bodyText1.override(
                                              //fontFamily: 'Signika Negative',
                                              //color: Colors.black,
                                              //fontWeight: FontWeight.w600,),
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
                                                      'Pills',
                                                      'Solution',
                                                      'Drops',
                                                      'Injections',
                                                      'Powder',
                                                      'Others'].map<DropdownMenuItem<String>>(
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
                                                    hint: const Text('Choose Medication Type'),
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
                                      
                                      

                                      //child: FlutterFlowDropDown(
                                              //options: [
                                                //'Pills',
                                                //'Solution',
                                                //'Drops',
                                                //'Injections',
                                                //'Powder',
                                                //'Others'
                                              //].toList(),
                                             // onChanged: (val) =>
                                                  //setState(() => dropDownValue = val),
                                              //width: MediaQuery.of(context).size.width *0.89,
                                              //height: 50,
                                              //textStyle: GoogleFonts.signikaNegative(
                                                          //color: const Color(0xFF1D2429),
                                                          //fontSize: 14,
                                                          //fontWeight: FontWeight.normal,
                                                          //),
                                              //FlutterFlowTheme.of(context).bodyText1.override(
                                                    //fontFamily: 'Signika Negative',
                                                    //color: const Color(0xFF1D2429),
                                                    //fontSize: 14,/
                                                    //fontWeight: FontWeight.normal,),
                                              //hintText: 'Choose Medication Type',
                                              //fillColor: const Color(0xFFE7E0EC),
                                              //elevation: 2,
                                             // borderColor: Colors.transparent,
                                              //borderWidth: 0,
                                              //borderRadius: 8,
                                              //margin: const EdgeInsetsDirectional.fromSTEB(20, 4, 10, 4),
                                              //hidesUnderline: true,
                                      //),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Text(
                                        'STEP 4: Photo of Medication',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ),
                                        //FlutterFlowTheme.of(context).bodyText1.override(
                                              //fontFamily: 'Signika Negative',
                                              //color: Colors.black,),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: const Color(0xFF809BCE),
                                              minimumSize: const Size(140,35),
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                              )
                                            ),
                                            onPressed: (){},
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Icon(
                                                  Icons.upload_sharp,
                                                  size: 20,
                                                  ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                  child: Text(
                                                    'Upload',
                                                    style: GoogleFonts.signikaNegative(
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.normal,
                                                            ),
                                                    )
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                        //child: FFButtonWidget(
                                          //onPressed: () {},
                                          //text: 'Upload',
                                          //icon: const Icon(
                                            //Icons.upload_sharp,
                                            //size: 15,
                                          //),
                                          //options: FFButtonOptions(
                                            ///width: 140,
                                            //height: 35,
                                            //color: const Color(0xFF809BCE),
                                            //textStyle: GoogleFonts.signikaNegative(
                                                        //color: Colors.white,
                                                        //fontSize: 14,
                                                        //fontWeight: FontWeight.normal,
                                                        //),
                                                //FlutterFlowTheme.of(context).subtitle2.override(
                                                      //fontFamily: 'Signika Negative',
                                                      //color: Colors.white,
                                                      //fontSize: 14,
                                                      //fontWeight: FontWeight.normal,),
                                            //borderSide: const BorderSide(
                                              //color: Colors.transparent,
                                              //width: 1,
                                            //),
                                            //borderRadius: 20,
                                          //),
                                      //),

                                      Row(
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: const Color(0xFF809BCE),
                                              minimumSize: const Size(140,35),
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                              )
                                            ),
                                            onPressed: (){},
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Icon(
                                                  Icons.photo_camera,
                                                  size: 20,
                                                  ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                  child: Text(
                                                    'Take Photo',
                                                    style: GoogleFonts.signikaNegative(
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.normal,
                                                            ),
                                                    )
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )

                                      //FFButtonWidget(
                                        //onPressed: () {},
                                        //text: 'Take Photo',
                                        //icon: const Icon(
                                          //Icons.photo_camera,
                                          //size: 15,
                                        //),
                                        //options: FFButtonOptions(
                                          //width: 140,
                                          //height: 35,
                                          //color: const Color(0xFF809BCE),
                                          //textStyle: GoogleFonts.signikaNegative(
                                                      //color: Colors.white,
                                                      //fontSize: 14,
                                                      //fontWeight: FontWeight.normal,
                                                      //),
                                          //FlutterFlowTheme.of(context).subtitle2.override(
                                                //fontFamily: 'Signika Negative',
                                                //color: Colors.white,
                                                //fontSize: 14,
                                                //fontWeight: FontWeight.normal,),
                                          //borderSide: const BorderSide(
                                            //color: Colors.transparent,
                                            //width: 1,
                                          //),
                                          //borderRadius: 20,
                                        //),
                                      //),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Text(
                                        'STEP 5: Medication Provider Name',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ),
                                        //FlutterFlowTheme.of(context).bodyText1.override(
                                              //fontFamily: 'Signika Negative',
                                              //color: Colors.black,),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                        child: TextFormField(
                                          obscureText: false,
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF57636C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  ),
                                          decoration: InputDecoration(
                                                //FlutterFlowTheme.of(context).bodyText1.override(
                                                      //fontFamily:'Signika Negative',
                                                      //color: const Color(0xFF57636C),
                                                      //fontSize: 14,
                                                      //fontWeight:FontWeight.normal,),
                                            hintText: 'Enter Provider Name',
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
                                          ),
                                          //FlutterFlowTheme.of(context).bodyText1.override(
                                                //fontFamily: 'Signika Negative',
                                                //color: const Color(0xFF1D2429),
                                                //fontSize: 14,
                                                //fontWeight: FontWeight.normal,),
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
                                        'STEP 6: Medication Provider Contact',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                ),
                                        //FlutterFlowTheme.of(context).bodyText1.override(
                                              //fontFamily: 'Signika Negative',
                                              //color: Colors.black,),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                        child: TextFormField(
                                          obscureText: false,
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF57636C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  ),
                                          decoration: InputDecoration(
                                                //FlutterFlowTheme.of(context).bodyText1.override(
                                                      //fontFamily:'Signika Negative',
                                                      //color: const Color(0xFF57636C),
                                                      //fontSize: 14,
                                                      //fontWeight: FontWeight.normal,),
                                            hintText: 'Enter Provider Contact',
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
                                          ),
                                          //FlutterFlowTheme.of(context).bodyText1.override(
                                                //fontFamily: 'Signika Negative',
                                                //color: const Color(0xFF1D2429),
                                                //fontSize: 14,
                                                //fontWeight: FontWeight.normal,),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
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
                                            onPressed: (){
                                              Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => const AddMedication2()));
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                                  child: Text(
                                                    'NEXT',
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
                                      )

                                      //FFButtonWidget(
                                        //onPressed: () {
                                          //print('Button pressed ...');
                                        //},
                                        //text: 'NEXT',
                                        //options: FFButtonOptions(
                                          //width: 300,
                                          //height: 40,
                                          //color: const Color(0xFF809BCE),
                                          //textStyle: GoogleFonts.signikaNegative(
                                                      //color: Colors.white,
                                                      //fontSize: 18,
                                                      //fontWeight: FontWeight.normal,
                                                      //),
                                          //FlutterFlowTheme.of(context).subtitle2.override(
                                                //fontFamily: 'Signika Negative',
                                                //color: Colors.white,
                                                //fontSize: 18,
                                                //fontWeight: FontWeight.normal,),
                                          //elevation: 5,
                                          //borderSide: const BorderSide(
                                            //color: Colors.transparent,
                                            //width: 1,
                                          //),
                                          //borderRadius: 10,
                                        //),
                                      //),

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