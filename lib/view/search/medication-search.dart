import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicationResultWidget extends StatefulWidget {
  const MedicationResultWidget({Key key}) : super(key: key);

  @override
  _MedicationResultWidgetState createState() => _MedicationResultWidgetState();
}

class _MedicationResultWidgetState extends State<MedicationResultWidget> {
  String dropDownValue1;
  String dropDownValue2;
  TextEditingController searchFieldController2;
  TextEditingController searchFieldController1;
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
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 50, 0, 0),
            child: Text(
              'Medication Search',
              style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Fredoka One',
                color: Colors.black,
                fontSize: 28,
              ),
            ),
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Signika Negative',
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: TextFormField(
                                controller: searchFieldController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: ' Medication Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Signika Negative',
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0x98FFFFFF),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFEDF1FB),
                                  contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  prefixIcon: Icon(
                                    Icons.search_sharp,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.highlight_off,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Signika Negative',
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Search by Pill Characteristic',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Signika Negative',
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: TextFormField(
                                  controller: searchFieldController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pill Imprint',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Signika Negative',
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x98FFFFFF),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFFEDF1FB),
                                    contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    prefixIcon: Icon(
                                      Icons.search_sharp,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.highlight_off,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Signika Negative',
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Signika Negative',
                                        color: Colors.black,
                                      ),
                                      hintText: 'Any Color',
                                      fillColor: Color(0xFFEDF1FB),
                                      elevation: 2,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0,
                                      borderRadius: 0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      hidesUnderline: true,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Signika Negative',
                                        color: Colors.black,
                                      ),
                                      hintText: 'Any Shape',
                                      fillColor: Color(0xFFEDF1FB),
                                      elevation: 2,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0,
                                      borderRadius: 0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
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
                              EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Search',
                                options: FFButtonOptions(
                                  width: 107,
                                  height: 34,
                                  color: Color(0xFF809BCE),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                    fontFamily: 'Signika Negative',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  elevation: 3,
                                  borderSide: BorderSide(
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
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
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
                              ),
                              indicatorColor: Color(0xFF809BCE),
                              indicatorWeight: 3,
                              tabs: [
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF809BCE),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          14),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 1, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                0,
                                                                0,
                                                                0),
                                                            child: Text(
                                                              'Statins Atorvastatin',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Signika Negative',
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                16,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                30,
                                                                0,
                                                                0,
                                                                0),
                                                            child:
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius: 30,
                                                              borderWidth: 1,
                                                              buttonSize: 60,
                                                              icon: Icon(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF809BCE),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          14),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 1, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                0,
                                                                0,
                                                                0),
                                                            child: Text(
                                                              'Cod Liver Oil',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Signika Negative',
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                16,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                80,
                                                                0,
                                                                0,
                                                                0),
                                                            child:
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius: 30,
                                                              borderWidth: 1,
                                                              buttonSize: 60,
                                                              icon: Icon(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF809BCE),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          14),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 1, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                0,
                                                                0,
                                                                0),
                                                            child: Text(
                                                              'Normaten',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Signika Negative',
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                16,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                100,
                                                                0,
                                                                0,
                                                                0),
                                                            child:
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius: 30,
                                                              borderWidth: 1,
                                                              buttonSize: 60,
                                                              icon: Icon(
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    height: 48,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF809BCE),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          14),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 1, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                10,
                                                                0,
                                                                0,
                                                                0),
                                                            child: Text(
                                                              'Panadol',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                fontFamily:
                                                                'Signika Negative',
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                16,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                110,
                                                                0,
                                                                0,
                                                                0),
                                                            child:
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius: 30,
                                                              borderWidth: 1,
                                                              buttonSize: 60,
                                                              icon: Icon(
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 50,
                              icon: FaIcon(
                                FontAwesomeIcons.solidQuestionCircle,
                                color: Color(0xFF809BCE),
                                size: 30,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Text(
                                'Have difficulty in swallowing pills?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Signika Negative',
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

