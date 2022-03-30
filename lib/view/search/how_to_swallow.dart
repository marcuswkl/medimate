import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'medication_search.dart';

class HowToSwallowWidget extends StatefulWidget {
  const HowToSwallowWidget({Key? key}) : super(key: key);

  @override
  _HowToSwallowWidgetState createState() => _HowToSwallowWidgetState();
}

class _HowToSwallowWidgetState extends State<HowToSwallowWidget> {
  PageController pageViewController1 = PageController();
  PageController pageViewController2 = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
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
                      child: IconButton(
                        iconSize: 60,
                        color: const Color(0x00FCFCFC),
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                        //   Navigator.push(context,
                        //   MaterialPageRoute(builder: (context) => Subnav(data: Data(1))));
                        // },
    Navigator.pop(context);},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'Have Difficulty in Swallowing Pills?',
                      style: GoogleFonts.fredokaOne(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'Try out these few mental and physical tricks to learn how to swallow a pill! Scroll down to find out why do people may have a hard time swallowing pills and find out more articles related to Dysphagia which is the medical term for swallowing difficulties.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.signikaNegative(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 390,
                    child: Stack(
                      children: [
                        PageView(
                          controller: pageViewController1,
                          //??= PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            InkWell(
                              onTap: () async {},
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 1, 15, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 10,
                                        child: Container(
                                          width: 100,
                                          height: 340,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                        25, 20, 25, 0),
                                                child: Text(
                                                  'Pop-bottle method',
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts
                                                      .signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(25, 3, 25, 3),
                                                child: Text(
                                                  '1. Fill a plastic water or soda bottle with  water.\n2. Put the pill on your tongue and close your lips tightly around the bottle opening.\n3. Take a drink, keeping contact between the bottle and your lips and using a sucking motion to swallow the water and pill. Don’t let air get into the bottle.',
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts
                                                      .signikaNegative(
                                                    color:
                                                        const Color(0x98000000),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(0, 15, 0, 0),
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () async {},
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 1, 15, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 10,
                                        child: Container(
                                          width: 100,
                                          height: 340,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                        25, 20, 25, 0),
                                                child: Text(
                                                  'Pop-bottle method',
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts
                                                      .signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(25, 3, 25, 3),
                                                child: Text(
                                                  '1. Fill a plastic water or soda bottle with  water.\n2. Put the pill on your tongue and close your lips tightly around the bottle opening.\n3. Take a drink, keeping contact between the bottle and your lips and using a sucking motion to swallow the water and pill. Don’t let air get into the bottle.',
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts
                                                      .signikaNegative(
                                                    color:
                                                        const Color(0x98000000),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(0, 15, 0, 0),
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () async {},
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              15, 1, 15, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 10,
                                        child: Container(
                                          width: 100,
                                          height: 340,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                        25, 20, 25, 0),
                                                child: Text(
                                                  'Pop-bottle method',
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts
                                                      .signikaNegative(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(25, 3, 25, 3),
                                                child: Text(
                                                  '1. Fill a plastic water or soda bottle with  water.\n2. Put the pill on your tongue and close your lips tightly around the bottle opening.\n3. Take a drink, keeping contact between the bottle and your lips and using a sucking motion to swallow the water and pill. Don’t let air get into the bottle.',
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts
                                                      .signikaNegative(
                                                    color:
                                                        const Color(0x98000000),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(0, 15, 0, 0),
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0, 1.1),
                          child: SmoothPageIndicator(
                            controller: pageViewController1,
                            //??= PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController1.animateToPage(
                                i,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: const ExpandingDotsEffect(
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
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 40, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Related Articles',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.signikaNegative(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 25),
                    child: SizedBox(
                      width: double.infinity,
                      height: 290,
                      child: Stack(
                        children: [
                          PageView(
                            controller: pageViewController2,
                            //??= PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              10, 10, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://picsum.photos/seed/178/600',
                                            ).image,
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        alignment: const AlignmentDirectional(
                                            0, 0.050000000000000044),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(20, 0, 20, 0),
                                              child: Text(
                                                'Why do people find swallowing pills difficult?',
                                                textAlign: TextAlign.left,
                                                style:
                                                    GoogleFonts.signikaNegative(
                                                  color: Colors.white,
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 15),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  const Padding(
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
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: GoogleFonts
                                                          .signikaNegative(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  const Padding(
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
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: GoogleFonts
                                                          .signikaNegative(
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
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              10, 10, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://picsum.photos/seed/178/600',
                                            ).image,
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        alignment: const AlignmentDirectional(
                                            0, 0.050000000000000044),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(20, 0, 20, 0),
                                              child: Text(
                                                'Why do people find swallowing pills difficult?',
                                                textAlign: TextAlign.left,
                                                style:
                                                    GoogleFonts.signikaNegative(
                                                  color: Colors.white,
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 15),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  const Padding(
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
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: GoogleFonts
                                                          .signikaNegative(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  const Padding(
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
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: GoogleFonts
                                                          .signikaNegative(
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
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              10, 10, 10, 0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: Image.network(
                                              'https://picsum.photos/seed/178/600',
                                            ).image,
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Colors.black,
                                              offset: Offset(510, 105),
                                              spreadRadius: 20,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        alignment: const AlignmentDirectional(
                                            0, 0.050000000000000044),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(20, 0, 20, 0),
                                              child: Text(
                                                'Why do people find swallowing pills difficult?',
                                                textAlign: TextAlign.left,
                                                style:
                                                    GoogleFonts.signikaNegative(
                                                  color: Colors.white,
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 15),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  const Padding(
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
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: GoogleFonts
                                                          .signikaNegative(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  const Padding(
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
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            5, 0, 0, 0),
                                                    child: Text(
                                                      '5 mins read',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style: GoogleFonts
                                                          .signikaNegative(
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
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 1.15),
                            child: SmoothPageIndicator(
                              controller: pageViewController2,
                              //??= PageController(initialPage: 0),
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController2.animateToPage(
                                  i,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: const ExpandingDotsEffect(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
