import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HowToSwallowWidget extends StatefulWidget {
  const HowToSwallowWidget({Key key}) : super(key: key);

  @override
  _HowToSwallowWidgetState createState() => _HowToSwallowWidgetState();
}

class _HowToSwallowWidgetState extends State<HowToSwallowWidget> {
  PageController pageViewController1;
  PageController pageViewController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 21, 0, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color(0xFF809BCE),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          fillColor: Color(0x00FCFCFC),
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 15, 0, 0),
                  child: Text(
                    'Have Difficulty in Swallowing Pills?',
                    style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Fredoka One',
                      color: Colors.black,
                      fontSize: 28,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 20, 25, 0),
                  child: Text(
                    'Try out these few mental and physical tricks to learn how to swallow a pill! Scroll down to find out why do people may have a hard time swallowing pills and find out more articles related to Dysphagia which is the medical term for swallowing difficulties.',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Signika Negative',
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 330,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Container(
                          width: double.infinity,
                          height: 120,
                          child: Stack(
                            children: [
                              PageView(
                                controller: pageViewController1 ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5,
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            1,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 20, 25, 0),
                                              child: Text(
                                                'Pop-bottle method',
                                                textAlign: TextAlign.justify,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                  'Signika Negative',
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 3, 25, 0),
                                              child: Text(
                                                '1. Fill a plastic water or soda bottle with  water.\n2. Put the pill on your tongue and close your lips tightly around the bottle opening.\n3. Take a drink, keeping contact between the bottle and your lips and using a sucking motion to swallow the water and pill. Don’t let air get into the bottle.',
                                                textAlign: TextAlign.justify,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                  'Signika Negative',
                                                  color:
                                                  Color(0x98000000),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Image.network(
                                                'https://picsum.photos/seed/178/600',
                                                width: 170,
                                                height: 129,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5,
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 20, 25, 0),
                                              child: Text(
                                                'Lean Forward method',
                                                textAlign: TextAlign.justify,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                  'Signika Negative',
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(25, 3, 25, 0),
                                              child: Text(
                                                '1. Put a capsule on your tongue.\n2. Take a sip of water but don\'t swallow.\n3. Tilt your chin toward your chest.\n4. Swallow the capsule and water while your head is bent.\n** This technique showed an improvement of 89% over the old method of taking a sip of water from a cup and trying to swallow.',
                                                textAlign: TextAlign.justify,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                  'Signika Negative',
                                                  color:
                                                  Color(0x98000000),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Image.network(
                                                'https://picsum.photos/seed/178/600',
                                                width: 170,
                                                height: 95,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5,
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            1,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 50),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(25, 20, 25, 0),
                                                child: Text(
                                                  'Numb and Relax',
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily:
                                                    'Signika Negative',
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(25, 3, 25, 0),
                                                child: Text(
                                                  '1. Take several deep breaths to relax neck and throat muscles.\n2. Hold an ice cube or popsicle in your mouth to numb your throat and calm your gag reflex.\n3. Place the pill on your tongue. Some people recommend the tip while others suggest the middle of the tongue. Try both and see what works for you.',
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily:
                                                    'Signika Negative',
                                                    color:
                                                    Color(0x98000000),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 0, 0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/178/600',
                                                  width: 170,
                                                  height: 95,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: SmoothPageIndicator(
                                  controller: pageViewController1 ??=
                                      PageController(initialPage: 0),
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController1.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 16,
                                    dotHeight: 16,
                                    dotColor: Color(0xFF9E9E9E),
                                    activeDotColor: Color(0xFF8090BE),
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text(
                        'Related Articles',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Signika Negative',
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      height: 380,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Container(
                          width: double.infinity,
                          height: 120,
                          child: Stack(
                            children: [
                              PageView(
                                controller: pageViewController2 ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5,
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            1,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                          image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            image: Image.asset(
                                              'assets/images/image_22.png',
                                            ).image,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 240, 20, 0),
                                              child: Text(
                                                'Why do people find swallowing pills difficult?',
                                                textAlign: TextAlign.justify,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                  'Signika Negative',
                                                  color: Colors.white,
                                                  fontSize: 23,
                                                  fontWeight:
                                                  FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.access_time_rounded,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                      TextAlign.justify,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Signika Negative',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.assignment_ind,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                      TextAlign.justify,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Signika Negative',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.w500,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5,
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            1,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                          image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            image: Image.asset(
                                              'assets/images/image_22.png',
                                            ).image,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 240, 20, 0),
                                              child: Text(
                                                'Why do people find swallowing pills difficult?',
                                                textAlign: TextAlign.justify,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                  'Signika Negative',
                                                  color: Colors.white,
                                                  fontSize: 23,
                                                  fontWeight:
                                                  FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.access_time_rounded,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                      TextAlign.justify,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Signika Negative',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.assignment_ind,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                      TextAlign.justify,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Signika Negative',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.w500,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5,
                                      child: Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            1,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEEEEEE),
                                          image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            image: Image.asset(
                                              'assets/images/image_22.png',
                                            ).image,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 240, 20, 0),
                                              child: Text(
                                                'Why do people find swallowing pills difficult?',
                                                textAlign: TextAlign.justify,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                  'Signika Negative',
                                                  color: Colors.white,
                                                  fontSize: 23,
                                                  fontWeight:
                                                  FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.access_time_rounded,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                      TextAlign.justify,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Signika Negative',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.assignment_ind,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                      TextAlign.justify,
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Signika Negative',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.w500,
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
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: SmoothPageIndicator(
                                  controller: pageViewController2 ??=
                                      PageController(initialPage: 0),
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController2.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 16,
                                    dotHeight: 16,
                                    dotColor: Color(0xFF9E9E9E),
                                    activeDotColor: Color(0xFF8090BE),
                                    paintStyle: PaintingStyle.fill,
                                  ),
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
      ),
    );
  }
}

