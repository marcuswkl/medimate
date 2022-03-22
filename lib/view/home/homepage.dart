import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                        child: Text(
                          'Hi, Name!',
                          style:
                          FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Fredoka One',
                            color: Colors.black,
                            fontSize: 48,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                            child: Text(
                              'Upcoming To-do list:',
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x55000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 10, 16, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Coughing Medicine',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                fontFamily:
                                                'Signika Negative',
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight:
                                                FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 4, 0, 0),
                                          child: Text(
                                            'Benzonatate',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                              fontFamily:
                                              'Signika Negative',
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () {
                                            print('chatGuest pressed ...');
                                          },
                                          text: '2:00 PM',
                                          options: FFButtonOptions(
                                            width: 90,
                                            height: 23,
                                            color: Color(0xFF95B8D1),
                                            textStyle:
                                            FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                              fontFamily:
                                              'Signika Negative',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight:
                                              FontWeight.w500,
                                            ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 5, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('chatGuest pressed ...');
                                            },
                                            text: 'After Lunch',
                                            options: FFButtonOptions(
                                              width: 110,
                                              height: 25,
                                              color: Color(0xFF95B8D1),
                                              textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                'Signika Negative',
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight:
                                                FontWeight.w500,
                                              ),
                                              elevation: 3,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius: 30,
                                            ),
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x55000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 10, 16, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Please fill in your \ndaily medical journal.',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                fontFamily:
                                                'Signika Negative',
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
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () {
                                            print('chatGuest pressed ...');
                                          },
                                          text: 'Medical Journal',
                                          options: FFButtonOptions(
                                            width: 115,
                                            height: 46,
                                            color: Color(0xFF95B8D1),
                                            textStyle:
                                            FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                              fontFamily:
                                              'Signika Negative',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight:
                                              FontWeight.w500,
                                              lineHeight: 1,
                                            ),
                                            elevation: 3,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 30,
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
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'News/Articles',
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Fredoka One',
                              color: Colors.black,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
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
                                  text: 'Latest',
                                ),
                                Tab(
                                  text: 'Bookmarks',
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
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 145,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 3,
                                                        color:
                                                        Color(0x32000000),
                                                        offset: Offset(0, 1),
                                                      )
                                                    ],
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
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
                                                        Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  20,
                                                                  10,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                'SINGAPORE',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .title3
                                                                    .override(
                                                                  fontFamily:
                                                                  'Signika Negative',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                  16,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        20,
                                                                        4,
                                                                        0,
                                                                        0),
                                                                    child: Text(
                                                                      'When you are fully \nvaccinated, but still \nhospitalised for COVID-19',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .justify,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyText2
                                                                          .override(
                                                                        fontFamily:
                                                                        'Signika Negative',
                                                                        color:
                                                                        Color(0xFF64696B),
                                                                        fontSize:
                                                                        13,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      20,
                                                                      10,
                                                                      0,
                                                                      0),
                                                                  child: Text(
                                                                    '1 Mar 2022 10:00 AM',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Lexend Deca',
                                                                      fontSize:
                                                                      8,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(
                                                              height: 15,
                                                              thickness: 3,
                                                              indent: 10,
                                                              endIndent: 10,
                                                              color: Color(
                                                                  0xFF313131),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  20,
                                                                  0,
                                                                  0,
                                                                  15),
                                                              child: Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .bookmark_rounded,
                                                                        color: Color(
                                                                            0xFF809BCE),
                                                                        size:
                                                                        18,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Bookmark',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Signika Negative',
                                                                            color: Color(0x99000000),
                                                                            fontSize: 8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            25,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Icon(
                                                                          Icons
                                                                              .share_rounded,
                                                                          color:
                                                                          Color(0xFF809BCE),
                                                                          size:
                                                                          18,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Share',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Signika Negative',
                                                                            color: Color(0x9A000000),
                                                                            fontSize: 8,
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(37,
                                                              0, 0, 0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  8),
                                                              topLeft: Radius
                                                                  .circular(0),
                                                              topRight: Radius
                                                                  .circular(8),
                                                            ),
                                                            child:
                                                            Image.network(
                                                              'https://picsum.photos/seed/544/600',
                                                              width: 100,
                                                              height: 145,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 145,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 3,
                                                        color:
                                                        Color(0x32000000),
                                                        offset: Offset(0, 1),
                                                      )
                                                    ],
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
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
                                                        Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  20,
                                                                  10,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                'SINGAPORE',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .title3
                                                                    .override(
                                                                  fontFamily:
                                                                  'Signika Negative',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                  16,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0),
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        20,
                                                                        4,
                                                                        0,
                                                                        0),
                                                                    child: Text(
                                                                      'When you are fully \nvaccinated, but still \nhospitalised for COVID-19',
                                                                      textAlign:
                                                                      TextAlign
                                                                          .justify,
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyText2
                                                                          .override(
                                                                        fontFamily:
                                                                        'Signika Negative',
                                                                        color:
                                                                        Color(0xFF64696B),
                                                                        fontSize:
                                                                        13,
                                                                        fontWeight:
                                                                        FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      20,
                                                                      10,
                                                                      0,
                                                                      0),
                                                                  child: Text(
                                                                    '1 Mar 2022 10:00 AM',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Lexend Deca',
                                                                      fontSize:
                                                                      8,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(
                                                              height: 15,
                                                              thickness: 3,
                                                              indent: 10,
                                                              endIndent: 10,
                                                              color: Color(
                                                                  0xFF313131),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  20,
                                                                  0,
                                                                  0,
                                                                  15),
                                                              child: Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .bookmark_rounded,
                                                                        color: Color(
                                                                            0xFF809BCE),
                                                                        size:
                                                                        18,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Bookmark',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Signika Negative',
                                                                            color: Color(0x99000000),
                                                                            fontSize: 8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            25,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Icon(
                                                                          Icons
                                                                              .share_rounded,
                                                                          color:
                                                                          Color(0xFF809BCE),
                                                                          size:
                                                                          18,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Share',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Signika Negative',
                                                                            color: Color(0x9A000000),
                                                                            fontSize: 8,
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(37,
                                                              0, 0, 0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  8),
                                                              topLeft: Radius
                                                                  .circular(0),
                                                              topRight: Radius
                                                                  .circular(8),
                                                            ),
                                                            child:
                                                            Image.network(
                                                              'https://picsum.photos/seed/544/600',
                                                              width: 100,
                                                              height: 145,
                                                              fit: BoxFit.cover,
                                                            ),
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 145,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 3,
                                                        color:
                                                        Color(0x32000000),
                                                        offset: Offset(0, 1),
                                                      )
                                                    ],
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
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
                                                        Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  20,
                                                                  10,
                                                                  0,
                                                                  0),
                                                              child: Text(
                                                                'MALAYSIA',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .title3
                                                                    .override(
                                                                  fontFamily:
                                                                  'Signika Negative',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                  16,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      20,
                                                                      4,
                                                                      0,
                                                                      0),
                                                                  child: Text(
                                                                    'One symptom of Parkinson\'s\ndisease is a loss of facial\nexpression',
                                                                    textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText2
                                                                        .override(
                                                                      fontFamily:
                                                                      'Signika Negative',
                                                                      color:
                                                                      Color(0xFF64696B),
                                                                      fontSize:
                                                                      13,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      20,
                                                                      10,
                                                                      0,
                                                                      0),
                                                                  child: Text(
                                                                    '4 Jan 2022 01:00 PM',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyText1
                                                                        .override(
                                                                      fontFamily:
                                                                      'Lexend Deca',
                                                                      fontSize:
                                                                      8,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Divider(
                                                              height: 15,
                                                              thickness: 3,
                                                              indent: 10,
                                                              endIndent: 10,
                                                              color: Color(
                                                                  0xFF313131),
                                                            ),
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  20,
                                                                  0,
                                                                  0,
                                                                  15),
                                                              child: Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .bookmark_rounded,
                                                                        color: Color(
                                                                            0xFF809BCE),
                                                                        size:
                                                                        18,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Bookmark',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Signika Negative',
                                                                            color: Color(0x99000000),
                                                                            fontSize: 8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            25,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Icon(
                                                                          Icons
                                                                              .share_rounded,
                                                                          color:
                                                                          Color(0xFF809BCE),
                                                                          size:
                                                                          18,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Share',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                            fontFamily: 'Signika Negative',
                                                                            color: Color(0x9A000000),
                                                                            fontSize: 8,
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
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(24,
                                                              0, 0, 0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                            BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                              Radius
                                                                  .circular(
                                                                  8),
                                                              topLeft: Radius
                                                                  .circular(0),
                                                              topRight: Radius
                                                                  .circular(8),
                                                            ),
                                                            child:
                                                            Image.network(
                                                              'https://picsum.photos/seed/544/600',
                                                              width: 100,
                                                              height: 145,
                                                              fit: BoxFit.cover,
                                                            ),
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}