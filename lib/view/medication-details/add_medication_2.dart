import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'add_medication_1.dart';
import 'add_medication_3.dart';
import 'InputValidation.dart';


class AddMedication2 extends StatefulWidget {
  const AddMedication2({Key? key}) : super(key: key);

  @override
  _AddMedication2State createState() => _AddMedication2State();
}

class _AddMedication2State extends State<AddMedication2> with InputValidationMixin {
  late TextEditingController formInputController1;
  late TextEditingController formInputController2;
  String? dropDownValue1 = 'Pills';
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    formInputController1 = TextEditingController();
    formInputController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
      child: Scaffold(
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
                                  MaterialPageRoute(builder: (context) => const AddMedication1()));
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
                                '[2/3] : Restocking Details',
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
                                        'STEP 1: Dosage in Stock',
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          obscureText: false,
                                          style: GoogleFonts.signikaNegative(
                                                  color: const Color(0xFF57636C),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  ),
                                          decoration: InputDecoration( 
                                            hintText: 'Enter Medication Stock',
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
                                          onSaved: (String? value) {
                                            //save
                                            print("saved");
                                          },
                                          validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter your Medication Stock';
                                            } else {
                                              if (isName(value)) {
                                                return null;
                                              } else {
                                                return 'Please enter a valid Medication Stock';
                                              }
                                            }
                                          }
                                 
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
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                 
                                            hintText: 'Enter Number of Days',
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
                                          onSaved: (String? value) {
                                            //save
                                            print("saved");
                                          },
                                          validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Enter Number of Days';
                                            } else {
                                              if (isNumber(value)) {
                                                return null;
                                              } else {
                                                return 'Please enter a valid Number of Days';
                                              }
                                            }
                                          }
 
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
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                              MaterialPageRoute(builder: (context) => const AddMedication3()));
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
      ),
    );
  }
}