import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'medication_search.dart';
import '../../nav.dart';

class MedicationSearchResultWidget extends StatefulWidget {
  const MedicationSearchResultWidget({Key? key}) : super(key: key);

  @override
  _MedicationSearchResultWidgetState createState() =>
      _MedicationSearchResultWidgetState();
}

class _MedicationSearchResultWidgetState
    extends State<MedicationSearchResultWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final itemKey = GlobalKey();
  final itemKey2 = GlobalKey();
  final itemKey3 = GlobalKey();
  final itemKey4 = GlobalKey();
  final itemKey5 = GlobalKey();
  final itemKey6 = GlobalKey();

  Future scrollToItem(itemToScroll) async {
    final context = itemToScroll.currentContext!;

    await Scrollable.ensureVisible(
        context,
        alignment: 0,
        duration: const Duration(seconds: 1),
    );
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
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'Rosuvastatin Calcium',
                      style: GoogleFonts.fredokaOne(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                          child: Image.asset(
                            'assets/images/rosuvastatin_calcium1.png',
                            width: 169,
                            height: 134,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Image.asset(
                          'assets/images/rosuvastatin_calcium2.png',
                         width: 150,
                          height: 134,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'Strength: 40 mg\nPill Imprint: B 40\nColor: Pink\nShape: Elliptical/Oval',
                      style: GoogleFonts.signikaNegative(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xFF809BCE),
                                      minimumSize: const Size(71, 35),
                                      elevation: 3,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      )),
                                  onPressed: () => scrollToItem(itemKey),
                                  child: Text(
                                    'USES',
                                    style: GoogleFonts.signikaNegative(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 0, 0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF809BCE),
                                        minimumSize: const Size(89, 35),
                                        elevation: 3,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        )),
                                    onPressed: () => scrollToItem(itemKey2),
                                    child: Text(
                                      'METHOD',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 0, 0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF809BCE),
                                        minimumSize: const Size(116, 35),
                                        elevation: 3,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        )),
                                    onPressed: () => scrollToItem(itemKey3),
                                    child: Text(
                                      'SIDE EFFECT',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF809BCE),
                                        minimumSize: const Size(121, 35),
                                        elevation: 3,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        )),
                                    onPressed: () => scrollToItem(itemKey4),
                                    child: Text(
                                      'PRECAUTION',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            17, 0, 0, 0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: const Color(0xFF809BCE),
                                          minimumSize: const Size(170, 35),
                                          elevation: 3,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          )),
                                      onPressed: () => scrollToItem(itemKey5),
                                      child: Text(
                                        'STORAGE',
                                        style: GoogleFonts.signikaNegative(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF809BCE),
                                        minimumSize: const Size(116, 35),
                                        elevation: 3,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        )),
                                    onPressed: () => scrollToItem(itemKey6),
                                    child: Text(
                                      'DRUG INTERACTIONS',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
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
                  ),
                  SingleChildScrollView (
                  child: Column (
                    children: [
                      Container (
                        key: itemKey, child:
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What is the uses?',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 8,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Text(
                                      'Rosuvastatin is used along with a proper diet to help lower "bad" cholesterol and fats (such as LDL, triglycerides) and raise "good" cholesterol (HDL) in the blood. ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.signikaNegative(
                                        color: const Color(0x98000000),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ),
                    Container (
                        key: itemKey2, child:
                      Padding (
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How to use?',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 8,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Text(
                                      'Take this medication by mouth with or without food as directed by your doctor, usually once daily. If you are taking the capsule form of this medication, swallow the capsules whole. Do not crush or chew the capsules. If you have trouble swallowing the capsules, click here. ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.signikaNegative(
                                        color: const Color(0x98000000),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container (
                        key: itemKey3, child:
                    Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What are the side effects?',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 8,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Text(
                                      'Take this medication by mouth with or without food as directed by your doctor, usually once daily. If you are taking the capsule form of this medication, swallow the capsules whole. Do not crush or chew the capsules. If you have trouble swallowing the capsules, click here. ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.signikaNegative(
                                        color: const Color(0x98000000),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container (
                        key: itemKey4, child:
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Precaution',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 8,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Text(
                                      'This medication must not be used during pregnancy. Rosuvastatin may harm an unborn baby. It is important to prevent pregnancy while taking this medication. ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.signikaNegative(
                                        color: const Color(0x98000000),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container (
                        key: itemKey5, child:
                    Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Drug Interactions',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 8,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Text(
                                      'Do not take any red yeast rice products while you are taking rosuvastatin because some red yeast rice products may also contain a statin called lovastatin. Taking rosuvastatin and red yeast rice products together can increase your risk of serious muscle and liver problems.',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.signikaNegative(
                                        color: const Color(0x98000000),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container (
                        key: itemKey6, child:
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Storage',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 8,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEEEEEE),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Text(
                                      'Store at room temperature away from light and moisture. Do not store in the bathroom. Keep all medications away from children and pets. Do not flush medications down the toilet or pour them into a drain unless instructed to do so. ',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.signikaNegative(
                                        color: const Color(0x98000000),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ]
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
