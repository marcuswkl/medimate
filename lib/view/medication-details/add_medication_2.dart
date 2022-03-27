import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMedication2 extends StatefulWidget {
  const AddMedication2({Key? key}) : super(key: key);

  @override
  _AddMedication2State createState() => _AddMedication2State();
}

class _AddMedication2State extends State<AddMedication2> {
  late String dropDownValue;
  late TextEditingController formInputController1;
  late TextEditingController formInputController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    formInputController1 = TextEditingController();
    formInputController2 = TextEditingController();
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
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 18,
                          buttonSize: 48,
                          fillColor: const Color(0xFF809BCE),
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 30,
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
                                '[2/3] : Restocking Details',
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
                                        'STEP 1: Dosage in Stock',
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
                                            labelText: 'Enter Medication Stock',
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
                                        'STEP 2: Number of Days for Reminder of Low Supply ',
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
                                            labelText: 'Enter Number of Days',
                                            labelStyle:
                                                FlutterFlowTheme.of(context).bodyText1.override(
                                                      fontFamily:'Signika Negative',
                                                      color: const Color(0xFF57636C),
                                                      fontSize: 14,
                                                      fontWeight:FontWeight.normal,
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
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Signika Negative',
                                                color: const Color(0xFF1D2429),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
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
                                      padding: const dgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Text(
                                        'STEP 3: Medication Type',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Signika Negative',
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
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Signika Negative',
                                              color: const Color(0xFF1D2429),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {},
                                        text: 'NEXT',
                                        options: FFButtonOptions(
                                          width: 300,
                                          height: 40,
                                          color: const Color(0xFF809BCE),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Signika Negative',
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal,
                                              ),
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