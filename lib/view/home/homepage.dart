import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'side_effects_survey.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Hi, Name!',
                          style: GoogleFonts.fredokaOne(
                            color: Colors.black,
                            fontSize: 48,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Upcoming To-do list:',
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Generated code for this bottomButtonArea Widget...
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 5, 0, 0),
                              child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.85,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          16, 10, 16, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Coughing Medicine',
                                            style: GoogleFonts.signikaNegative(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                tapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                                primary:
                                                const Color(0xFF95B8D1),
                                                minimumSize: const Size(90, 23),
                                                elevation: 3,
                                                shape:
                                                const RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(15)),
                                                )),
                                            onPressed: () {},
                                            child: Text(
                                              '2.00 PM',
                                              style:
                                              GoogleFonts.signikaNegative(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          16, 0, 16, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 4, 0, 0),
                                            child: Text(
                                              'Benzonatate',
                                              style:
                                              GoogleFonts.signikaNegative(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 5, 0, 0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  tapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                                  primary:
                                                  const Color(0xFF95B8D1),
                                                  minimumSize:
                                                  const Size(100, 23),
                                                  elevation: 3,
                                                  shape:
                                                  const RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.all(
                                                        Radius.circular(
                                                            15)),
                                                  )),
                                              onPressed: () {},
                                              child: Text(
                                                'After Lunch',
                                                style:
                                                GoogleFonts.signikaNegative(
                                                  color: Colors.white,
                                                  fontSize: 14,
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 10, 0, 0),
                              child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.85,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
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
                                          Text(
                                            'Please fill in your \ndaily medical journal.',
                                            style: GoogleFonts.signikaNegative(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary:
                                                const Color(0xFF95B8D1),
                                                minimumSize: const Size(90, 30),
                                                elevation: 3,
                                                shape:
                                                const RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(15)),
                                                )),
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (
                                                      context) => const SideEffectsSurveyWidget()));
                                            },
                                            child: Text(
                                              'Journal',
                                              style:
                                              GoogleFonts.signikaNegative(
                                                color: Colors.white,
                                                fontSize: 14,
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
                      ],
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 10, 0, 0),
                            child: Text(
                              'News/Articles',
                              style: GoogleFonts.fredokaOne(
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
                        padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: DefaultTabController(
                          length: 2,
                          initialIndex: 0,
                          child: Column(
                            children: [
                              TabBar(
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                labelStyle: GoogleFonts.signikaNegative(
                                  fontSize: 14,
                                ),
                                indicatorColor: const Color(0xFF809BCE),
                                indicatorWeight: 3,
                                tabs: const [
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
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 20, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Material(
                                                  color: Colors.transparent,
                                                  elevation: 3,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 145,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
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
                                                      border: Border.all(
                                                        color: const Color(
                                                            0x2C000000),
                                                      ),
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
                                                          Expanded(
                                                            flex: 7,
                                                            child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      15,
                                                                      10,
                                                                      0,
                                                                      10),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Text(
                                                                        'SINGAPORE',
                                                                        style: GoogleFonts
                                                                            .signikaNegative(
                                                                          color:
                                                                          Colors
                                                                              .black,
                                                                          fontSize:
                                                                          16,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'When you are fully \nvaccinated, but still \nhospitalised for COVID-19',
                                                                          style:
                                                                          GoogleFonts
                                                                              .signikaNegative(
                                                                            color:
                                                                            const Color(
                                                                                0xFF64696B),
                                                                            fontSize:
                                                                            14,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          '1 Mar 2022 10:00 AM',
                                                                          style:
                                                                          GoogleFonts
                                                                              .signikaNegative(
                                                                            fontSize:
                                                                            8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                const Divider(
                                                                  height: 1,
                                                                  thickness: 1,
                                                                  color: Color(
                                                                      0x91000000),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      5,
                                                                      15,
                                                                      5),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                        children: [
                                                                          const Icon(
                                                                            Icons
                                                                                .bookmark_rounded,
                                                                            color:
                                                                            Color(
                                                                                0xFF809BCE),
                                                                            size:
                                                                            18,
                                                                          ),
                                                                          Text(
                                                                            'Bookmark',
                                                                            style:
                                                                            GoogleFonts
                                                                                .signikaNegative(
                                                                              color: const Color(
                                                                                  0x99000000),
                                                                              fontSize: 8,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                        children: [
                                                                          const Icon(
                                                                            Icons
                                                                                .share_rounded,
                                                                            color:
                                                                            Color(
                                                                                0xFF809BCE),
                                                                            size:
                                                                            18,
                                                                          ),
                                                                          Text(
                                                                            'Share',
                                                                            style:
                                                                            GoogleFonts
                                                                                .signikaNegative(
                                                                              color: const Color(
                                                                                  0x9A000000),
                                                                              fontSize: 8,
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
                                                          Expanded(
                                                            flex: 3,
                                                            child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        PageTransition(
                                                                          type:
                                                                          PageTransitionType
                                                                              .fade,
                                                                          child:
                                                                          Image
                                                                              .asset(
                                                                            'assets/images/news1.png',
                                                                            width:
                                                                            100,
                                                                            height:
                                                                            MediaQuery
                                                                                .of(
                                                                                context)
                                                                                .size
                                                                                .height *
                                                                                0.17,
                                                                            fit:
                                                                            BoxFit
                                                                                .fill,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: Hero(
                                                                      tag:
                                                                      'imageTag1',
                                                                      transitionOnUserGestures:
                                                                      true,
                                                                      child:
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                          bottomLeft:
                                                                          Radius
                                                                              .circular(
                                                                              0),
                                                                          bottomRight:
                                                                          Radius
                                                                              .circular(
                                                                              8),
                                                                          topLeft:
                                                                          Radius
                                                                              .circular(
                                                                              0),
                                                                          topRight:
                                                                          Radius
                                                                              .circular(
                                                                              8),
                                                                        ),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/news2.png',
                                                                          width:
                                                                          100,
                                                                          height:
                                                                          MediaQuery
                                                                              .of(
                                                                              context)
                                                                              .size
                                                                              .height *
                                                                              0.17,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
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
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0, 20, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Material(
                                                  color: Colors.transparent,
                                                  elevation: 3,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 135,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: const [
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
                                                      border: Border.all(
                                                        color: const Color(
                                                            0x2C000000),
                                                      ),
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
                                                          Expanded(
                                                            flex: 7,
                                                            child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      15,
                                                                      10,
                                                                      0,
                                                                      10),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Text(
                                                                        'MALAYSIA',
                                                                        style: GoogleFonts
                                                                            .signikaNegative(
                                                                          color:
                                                                          Colors
                                                                              .black,
                                                                          fontSize:
                                                                          16,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Racial Disparities in Pediatric Postoperative Mortality Rates',
                                                                          style:
                                                                          GoogleFonts
                                                                              .signikaNegative(
                                                                            color:
                                                                            const Color(
                                                                                0xFF64696B),
                                                                            fontSize:
                                                                            14,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          '2 Mar 2022 8:00 AM',
                                                                          style:
                                                                          GoogleFonts
                                                                              .signikaNegative(
                                                                            fontSize:
                                                                            8,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                const Divider(
                                                                  height: 1,
                                                                  thickness: 1,
                                                                  color: Color(
                                                                      0x91000000),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      5,
                                                                      15,
                                                                      5),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                        children: [
                                                                          const Icon(
                                                                            Icons
                                                                                .bookmark_rounded,
                                                                            color:
                                                                            Color(
                                                                                0xFF809BCE),
                                                                            size:
                                                                            18,
                                                                          ),
                                                                          Text(
                                                                            'Bookmark',
                                                                            style:
                                                                            GoogleFonts
                                                                                .signikaNegative(
                                                                              color: const Color(
                                                                                  0x99000000),
                                                                              fontSize: 8,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                        children: [
                                                                          const Icon(
                                                                            Icons
                                                                                .share_rounded,
                                                                            color:
                                                                            Color(
                                                                                0xFF809BCE),
                                                                            size:
                                                                            18,
                                                                          ),
                                                                          Text(
                                                                            'Share',
                                                                            style:
                                                                            GoogleFonts
                                                                                .signikaNegative(
                                                                              color: const Color(
                                                                                  0x9A000000),
                                                                              fontSize: 8,
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
                                                          Expanded(
                                                            flex: 3,
                                                            child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        PageTransition(
                                                                          type:
                                                                          PageTransitionType
                                                                              .fade,
                                                                          child:
                                                                          Image
                                                                              .asset(
                                                                            'assets/images/news2.png',
                                                                            width:
                                                                            100,
                                                                            height:
                                                                            MediaQuery
                                                                                .of(
                                                                                context)
                                                                                .size
                                                                                .height *
                                                                                0.17,
                                                                            fit:
                                                                            BoxFit
                                                                                .fill,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: Hero(
                                                                      tag:
                                                                      'imageTag2',
                                                                      transitionOnUserGestures:
                                                                      true,
                                                                      child:
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                        const BorderRadius
                                                                            .only(
                                                                          bottomLeft:
                                                                          Radius
                                                                              .circular(
                                                                              0),
                                                                          bottomRight:
                                                                          Radius
                                                                              .circular(
                                                                              8),
                                                                          topLeft:
                                                                          Radius
                                                                              .circular(
                                                                              0),
                                                                          topRight:
                                                                          Radius
                                                                              .circular(
                                                                              8),
                                                                        ),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/news1.png',
                                                                          width:
                                                                          100,
                                                                          height:
                                                                          MediaQuery
                                                                              .of(
                                                                              context)
                                                                              .size
                                                                              .height *
                                                                              0.17,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
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
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 3,
                                                    shape:
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          8),
                                                    ),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 145,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 3,
                                                            color: Color(
                                                                0x32000000),
                                                            offset:
                                                            Offset(0, 1),
                                                          )
                                                        ],
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(8),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0x2C000000),
                                                        ),
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
                                                            Expanded(
                                                              flex: 7,
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        15,
                                                                        10,
                                                                        0,
                                                                        10),
                                                                    child:
                                                                    Column(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        Text(
                                                                          'MALAYSIA',
                                                                          style:
                                                                          GoogleFonts
                                                                              .signikaNegative(
                                                                            color:
                                                                            Colors
                                                                                .black,
                                                                            fontSize:
                                                                            16,
                                                                            fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Text(
                                                                            'Lack of Awareness and the Normalization of Dysmenorrhea',
                                                                            style:
                                                                            GoogleFonts
                                                                                .signikaNegative(
                                                                              color: const Color(
                                                                                  0xFF64696B),
                                                                              fontSize: 14,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional
                                                                              .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Text(
                                                                            '14 Jan 2022 1:00 PM',
                                                                            style:
                                                                            GoogleFonts
                                                                                .signikaNegative(
                                                                              fontSize: 8,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  const Divider(
                                                                    height: 1,
                                                                    thickness:
                                                                    1,
                                                                    color: Color(
                                                                        0x91000000),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        15,
                                                                        5),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                          children: [
                                                                            const Icon(
                                                                              Icons
                                                                                  .bookmark_rounded,
                                                                              color: Color(
                                                                                  0xFF809BCE),
                                                                              size: 18,
                                                                            ),
                                                                            Text(
                                                                              'Bookmark',
                                                                              style: GoogleFonts
                                                                                  .signikaNegative(
                                                                                color: const Color(
                                                                                    0x99000000),
                                                                                fontSize: 8,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                          children: [
                                                                            const Icon(
                                                                              Icons
                                                                                  .share_rounded,
                                                                              color: Color(
                                                                                  0xFF809BCE),
                                                                              size: 18,
                                                                            ),
                                                                            Text(
                                                                              'Share',
                                                                              style: GoogleFonts
                                                                                  .signikaNegative(
                                                                                color: const Color(
                                                                                    0x9A000000),
                                                                                fontSize: 8,
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
                                                            Expanded(
                                                              flex: 3,
                                                              child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        await Navigator
                                                                            .push(
                                                                          context,
                                                                          PageTransition(
                                                                            type:
                                                                            PageTransitionType
                                                                                .fade,
                                                                            child:
                                                                            Image
                                                                                .asset(
                                                                              'assets/images/news1.png',
                                                                              width: 100,
                                                                              height: MediaQuery
                                                                                  .of(
                                                                                  context)
                                                                                  .size
                                                                                  .height *
                                                                                  0.17,
                                                                              fit: BoxFit
                                                                                  .fill,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                      child:
                                                                      Hero(
                                                                        tag:
                                                                        'imageTag3',
                                                                        transitionOnUserGestures:
                                                                        true,
                                                                        child:
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                            bottomLeft:
                                                                            Radius
                                                                                .circular(
                                                                                0),
                                                                            bottomRight:
                                                                            Radius
                                                                                .circular(
                                                                                8),
                                                                            topLeft:
                                                                            Radius
                                                                                .circular(
                                                                                0),
                                                                            topRight:
                                                                            Radius
                                                                                .circular(
                                                                                8),
                                                                          ),
                                                                          child:
                                                                          Image
                                                                              .asset(
                                                                            'assets/images/news1.png',
                                                                            width:
                                                                            100,
                                                                            height:
                                                                            MediaQuery
                                                                                .of(
                                                                                context)
                                                                                .size
                                                                                .height *
                                                                                0.17,
                                                                            fit:
                                                                            BoxFit
                                                                                .fill,
                                                                          ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
