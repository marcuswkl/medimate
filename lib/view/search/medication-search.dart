import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicationResultWidget extends StatefulWidget {
  const MedicationResultWidget({required Key key}) : super(key: key);

  @override
  _MedicationResultWidgetState createState() => _MedicationResultWidgetState();
}

class _MedicationResultWidgetState extends State<MedicationResultWidget> {
  late String dropDownValue1;
  late String dropDownValue2;
  late TextEditingController searchFieldController2;
  late TextEditingController searchFieldController1;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchFieldController1 = TextEditingController(text: 'Input');
    searchFieldController2 = TextEditingController(text: 'Input');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 50, 0, 0),
            child: Text(
              'Medication Search',
              style: GoogleFonts.fredokaOne(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
          ),
          actions: const [],
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Search by Medication Name',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: TextFormField(
                                controller: searchFieldController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: ' Medication Name',
                                  labelStyle: GoogleFonts.signikaNegative(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                  hintStyle: GoogleFonts.signikaNegative(
                                    color: const Color(0x98FFFFFF),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFFEDF1FB),
                                  contentPadding:
                                  const EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  prefixIcon: const Icon(
                                    Icons.search_sharp,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.highlight_off,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Search by Pill Characteristic',
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: TextFormField(
                                  controller: searchFieldController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pill Imprint',
                                    labelStyle: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                    hintStyle: GoogleFonts.signikaNegative(
                                      color: const Color(0x98FFFFFF),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFEDF1FB),
                                    contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    prefixIcon: const Icon(
                                      Icons.search_sharp,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    suffixIcon: const Icon(
                                      Icons.highlight_off,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  style: GoogleFonts.signikaNegative(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: FlutterFlowDropDown(
                                      initialOption: dropDownValue1 ??=
                                      'Any Color',
                                      options: [
                                        'White',
                                        'Yellow',
                                        'Blue',
                                        'Green',
                                        'Red'
                                      ].toList(),
                                      onChanged: (val) =>
                                          setState(() => dropDownValue1 = val),
                                      width: 150,
                                      height: 35,
                                      textStyle: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                      ),
                                      hintText: 'Any Color',
                                      fillColor: const Color(0xFFEDF1FB),
                                      elevation: 2,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0,
                                      borderRadius: 0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      hidesUnderline: true,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        30, 10, 0, 0),
                                    child: FlutterFlowDropDown(
                                      initialOption: dropDownValue2 ??=
                                      'Any Shape',
                                      options: ['Round', 'Oval', 'Triangle']
                                          .toList(),
                                      onChanged: (val) =>
                                          setState(() => dropDownValue2 = val),
                                      width: 150,
                                      height: 35,
                                      textStyle: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                      ),
                                      hintText: 'Any Shape',
                                      fillColor: const Color(0xFFEDF1FB),
                                      elevation: 2,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0,
                                      borderRadius: 0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      hidesUnderline: true,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Search',
                                options: FFButtonOptions(
                                  width: 107,
                                  height: 34,
                                  color: const Color(0xFF809BCE),
                                  textStyle: GoogleFonts.signikaNegative(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  elevation: 3,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 0,
                                  ),
                                  borderRadius: 26.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              labelColor: Colors.black,
                              unselectedLabelColor:
                              FlutterFlowTheme.of(context).grayLight,
                              labelStyle: GoogleFonts.getFont(
                                'Signika Negative',
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              indicatorColor: const Color(0xFF809BCE),
                              indicatorWeight: 3,
                              tabs: const [
                                Tab(
                                  text: 'Currently Taking',
                                ),
                                Tab(
                                  text: 'Non-active',
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFF809BCE),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          14),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 1, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                5,
                                                                10,
                                                                5),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  11),
                                                              child:
                                                              Image.network(
                                                                'https://picsum.photos/seed/870/600',
                                                                width: 40,
                                                                height: 40,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                0,
                                                                0,
                                                                0),
                                                            child: Text(
                                                              'Statins Atorvastatin',
                                                              style: GoogleFonts.signikaNegative(
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                16,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                30,
                                                                0,
                                                                0,
                                                                0),
                                                            child:
                                                            IconButton(
                                                              iconSize: 60,
                                                              icon: const Icon(
                                                                Icons
                                                                    .keyboard_arrow_right,
                                                                color: Colors
                                                                    .white,
                                                                size: 30,
                                                              ),
                                                              onPressed: () {
                                                                print(
                                                                    'IconButton pressed ...');
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFF809BCE),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          14),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 1, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                5,
                                                                10,
                                                                5),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  11),
                                                              child:
                                                              Image.network(
                                                                'https://picsum.photos/seed/870/600',
                                                                width: 40,
                                                                height: 40,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                0,
                                                                0,
                                                                0),
                                                            child: Text(
                                                              'Cod Liver Oil',
                                                              style: GoogleFonts.signikaNegative(
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                16,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                80,
                                                                0,
                                                                0,
                                                                0),
                                                            child:
                                                            IconButton(
                                                              iconSize: 60,
                                                              icon: const Icon(
                                                                Icons
                                                                    .keyboard_arrow_right,
                                                                color: Colors
                                                                    .white,
                                                                size: 30,
                                                              ),
                                                              onPressed: () {
                                                                print(
                                                                    'IconButton pressed ...');
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFF809BCE),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          14),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 1, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                5,
                                                                10,
                                                                5),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  11),
                                                              child:
                                                              Image.network(
                                                                'https://picsum.photos/seed/870/600',
                                                                width: 40,
                                                                height: 40,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                0,
                                                                0,
                                                                0),
                                                            child: Text(
                                                              'Normaten',
                                                              style: GoogleFonts.signikaNegative(
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                16,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                100,
                                                                0,
                                                                0,
                                                                0),
                                                            child:
                                                            IconButton(
                                                              iconSize: 60,
                                                              icon: const Icon(
                                                                Icons
                                                                    .keyboard_arrow_right,
                                                                color: Colors
                                                                    .white,
                                                                size: 30,
                                                              ),
                                                              onPressed: () {
                                                                print(
                                                                    'IconButton pressed ...');
                                                              },
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFF809BCE),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          14),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 1, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                5,
                                                                10,
                                                                5),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  11),
                                                              child:
                                                              Image.network(
                                                                'https://picsum.photos/seed/870/600',
                                                                width: 40,
                                                                height: 40,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                0,
                                                                0,
                                                                0),
                                                            child: Text(
                                                              'Panadol',
                                                              style: GoogleFonts.signikaNegative(
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                16,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                110,
                                                                0,
                                                                0,
                                                                0),
                                                            child:
                                                            IconButton(
                                                              iconSize: 60,
                                                              icon: const Icon(
                                                                Icons
                                                                    .keyboard_arrow_right,
                                                                color: Colors
                                                                    .white,
                                                                size: 30,
                                                              ),
                                                              onPressed: () {
                                                                print(
                                                                    'IconButton pressed ...');
                                                              },
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
                                        ],
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
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 50,
                              icon: const FaIcon(
                                FontAwesomeIcons.solidCircleQuestion,
                                color: Color(0xFF809BCE),
                                size: 30,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Have difficulty in swallowing pills?',
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}

