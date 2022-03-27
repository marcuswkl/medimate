import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMedication1 extends StatefulWidget {
  const AddMedication1({Key? key}) : super(key: key);

  @override
  _AddMedication1State createState() => _AddMedication1State();
}

class _AddMedication1State extends State<AddMedication1> {
  late String dropDownValue;
  late TextEditingController formInputController1;
  late TextEditingController formInputController2;
  late TextEditingController formInputController3;
  late TextEditingController formInputController4;
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
      backgroundColor: Theme.of(context).primaryColor,
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
                        IconButton(
                          //borderRadius: BorderRadius.all(18),
                          //fillColor: Color(0xFF809BCE),
                          iconSize: 30,
                          color: const Color(0xFF809BCE),
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                          ), 
                          onPressed: () {},
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
                                          controller: formInputController1,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Enter Medication Name',
                                            labelStyle: GoogleFonts.signikaNegative(
                                                          color: const Color(0xFF57636C),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.normal,
                                                          ),
                                            //FlutterFlowTheme.of(context).bodyText1.override(
                                                          //fontFamily:'Signika Negative',
                                                          //color: const Color(0xFF57636C),
                                                          //fontSize: 14,
                                                          //fontWeight: FontWeight.normal,),
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
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF1D2429),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
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
                                          controller: formInputController2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Enter Medication Nickname',
                                            labelStyle: GoogleFonts.signikaNegative(
                                                color: const Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                ),
                                                //FlutterFlowTheme.of(context).bodyText1.override(
                                                      //fontFamily: 'Signika Negative',
                                                      //color: const Color(0xFF57636C),
                                                      //fontSize: 14,
                                                      //fontWeight: FontWeight.normal,),
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
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF1D2429),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
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
                                      child: FlutterFlowDropDown(
                                        options: [
                                          'Pills',
                                          'Solution',
                                          'Drops',
                                          'Injections',
                                          'Powder',
                                          'Others'
                                        ].toList(),
                                        onChanged: (val) =>
                                            setState(() => dropDownValue = val),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.89,
                                        height: 50,
                                        textStyle: GoogleFonts.signikaNegative(
                                                    color: const Color(0xFF1D2429),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.normal,
                                                    ),
                                        //FlutterFlowTheme.of(context).bodyText1.override(
                                              //fontFamily: 'Signika Negative',
                                              //color: const Color(0xFF1D2429),
                                              //fontSize: 14,
                                              //fontWeight: FontWeight.normal,),
                                        hintText: 'Choose Medication Type',
                                        fillColor: const Color(0xFFE7E0EC),
                                        elevation: 2,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0,
                                        borderRadius: 8,
                                        margin: const EdgeInsetsDirectional.fromSTEB(20, 4, 10, 4),
                                        hidesUnderline: true,
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
                                        'STEP 4: Photo of Medication',
                                        style: GoogleFonts.signikaNegative(
                                                color: Colors.black,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () {},
                                          text: 'Upload',
                                          icon: const Icon(
                                            Icons.upload_sharp,
                                            size: 15,
                                          ),
                                          options: FFButtonOptions(
                                            width: 140,
                                            height: 35,
                                            color: const Color(0xFF809BCE),
                                            textStyle: GoogleFonts.signikaNegative(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.normal,
                                                        ),
                                                //FlutterFlowTheme.of(context).subtitle2.override(
                                                      //fontFamily: 'Signika Negative',
                                                      //color: Colors.white,
                                                      //fontSize: 14,
                                                      //fontWeight: FontWeight.normal,),
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 20,
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {},
                                        text: 'Take Photo',
                                        icon: const Icon(
                                          Icons.photo_camera,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          width: 140,
                                          height: 35,
                                          color: const Color(0xFF809BCE),
                                          textStyle: GoogleFonts.signikaNegative(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.normal,
                                                      ),
                                          //FlutterFlowTheme.of(context).subtitle2.override(
                                                //fontFamily: 'Signika Negative',
                                                //color: Colors.white,
                                                //fontSize: 14,
                                                //fontWeight: FontWeight.normal,),
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 20,
                                        ),
                                      ),
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
                                          controller: formInputController3,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Enter Provider Name',
                                            labelStyle: GoogleFonts.signikaNegative(
                                                          color: const Color(0xFF57636C),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.normal,
                                                          ),
                                                //FlutterFlowTheme.of(context).bodyText1.override(
                                                      //fontFamily:'Signika Negative',
                                                      //color: const Color(0xFF57636C),
                                                      //fontSize: 14,
                                                      //fontWeight:FontWeight.normal,),
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
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF1D2429),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
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
                                          controller: formInputController4,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Enter Provider Contact',
                                            labelStyle: GoogleFonts.signikaNegative(
                                                          color: const Color(0xFF57636C),
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.normal,
                                                          ),
                                                //FlutterFlowTheme.of(context).bodyText1.override(
                                                      //fontFamily:'Signika Negative',
                                                      //color: const Color(0xFF57636C),
                                                      //fontSize: 14,
                                                      //fontWeight: FontWeight.normal,),
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
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF1D2429),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'NEXT',
                                        options: FFButtonOptions(
                                          width: 300,
                                          height: 40,
                                          color: const Color(0xFF809BCE),
                                          textStyle: GoogleFonts.signikaNegative(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.normal,
                                                      ),
                                          //FlutterFlowTheme.of(context).subtitle2.override(
                                                //fontFamily: 'Signika Negative',
                                                //color: Colors.white,
                                                //fontSize: 18,
                                                //fontWeight: FontWeight.normal,),
                                          elevation: 5,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 10,
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