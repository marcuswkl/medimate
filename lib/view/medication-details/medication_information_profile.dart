import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'medication_list.dart';
import 'MedicationData.dart'; //for medication data query

class MedicationInformationProfileWidget extends StatefulWidget {
  const MedicationInformationProfileWidget({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  _MedicationInformationProfileWidgetState createState() => _MedicationInformationProfileWidgetState();
}

class _MedicationInformationProfileWidgetState extends State<MedicationInformationProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  
  String? medNickName, medName, medPic, adheranceRate, supplyRate, completionRate, medType, medProvider, medProviderContact, duration, dosage, frequencyPerWeek, frequencyPerDay, dosageStock;

  _medicationQuery(index) {
    Map medDetails = medications.values.elementAt(index);
    return {
      medNickName = medDetails['MedNickName'],
      medName = medDetails['MedName'],
      medPic = medDetails['MedPic'],
      medType =  medDetails['MedType'],
      medProvider = medDetails['MedProvider'],
      medProviderContact =  medDetails['MedProviderContact'],
      duration = medDetails['Duration'],
      dosage = medDetails['Dosage'],
      frequencyPerWeek = medDetails['FrequencyPerWeek'],
      frequencyPerDay = medDetails['FrequencyPerDay'],
      dosageStock = medDetails['DosageStock'],
    };
  }

  @override
  Widget build(BuildContext context) {
    _medicationQuery(widget.index);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: const Color(0xFF809BCE),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        iconSize: 60,
                        color: const Color(0x00FCFCFC),
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);},
                      ),
                    ),
                    IconButton(
                      iconSize: 50,
                      color: Colors.transparent,
                      icon: const Icon(
                        Icons.keyboard_control,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Image.asset(
                    medPic!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                  color: Color(0x80809BCE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(66),
                    topRight: Radius.circular(66),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(40, 35, 40, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            medName!, //'Cholesterol Medicine',
                            style: GoogleFonts.signikaNegative(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              medNickName!,//'Atorvastatin',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Type(s): ',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              medType!,
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Provided By: ',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              medProvider!,
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Contact: ',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              medProviderContact!,
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
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
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 126,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE7E0EC),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 10, 5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          const Icon(
                                            Icons.event_note,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Duration',
                                                style: GoogleFonts.signikaNegative(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                duration!,
                                                style: GoogleFonts.signikaNegative(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 126,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE7E0EC),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 10, 5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          const Icon(
                                            Icons.local_hospital,
                                            color: Colors.black,
                                            size: 30,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Dosage',
                                                style: GoogleFonts.signikaNegative(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                dosage!,
                                                style: GoogleFonts.signikaNegative(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 126,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFE7E0EC),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 5),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            const Icon(
                                              Icons.near_me,
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Per Week',
                                                  style: GoogleFonts.signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  frequencyPerWeek!,
                                                  style: GoogleFonts.signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 126,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFE7E0EC),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 5),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            const Icon(
                                              Icons.access_time,
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Per Day',
                                                  style: GoogleFonts.signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  frequencyPerDay!,
                                                  style: GoogleFonts.signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ],
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
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 126,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFE7E0EC),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 5),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: [
                                            const Icon(
                                              Icons.medical_services_rounded,
                                              color: Colors.black,
                                              size: 30,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Stock',
                                                  style: GoogleFonts.signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  dosageStock!,
                                                  style: GoogleFonts.signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
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
    );
  }
}

