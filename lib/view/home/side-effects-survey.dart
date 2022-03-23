import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SideEffectsSurveyWidget extends StatefulWidget {
  const SideEffectsSurveyWidget({required Key key}) : super(key: key);

  @override
  _SideEffectsSurveyWidgetState createState() =>
      _SideEffectsSurveyWidgetState();
}

class _SideEffectsSurveyWidgetState extends State<SideEffectsSurveyWidget> {
  late TextEditingController searchFieldController;
  late TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchFieldController = TextEditingController();
    textController2 = TextEditingController(
        text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie eros lectus, in convallis velit rutrum a.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                child: IconButton(
                  iconSize: 42,
                  color: const Color(0xFF809BCE),
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                child: Text(
                  'Medical Journal',
                  style: GoogleFonts.fredokaOne(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                child: Text(
                  'Are you exhibiting any symptoms?',
                  style: GoogleFonts.signikaNegative(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: TextFormField(
                          controller: searchFieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: GoogleFonts.signikaNegative(
                              color: Colors.white,
                            ),
                            hintStyle: GoogleFonts.signikaNegative(
                              color: const Color(0x98FFFFFF),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: const Color(0xFF809BCE),
                            contentPadding:
                            const EdgeInsetsDirectional.fromSTEB(24, 20, 20, 20),
                            prefixIcon: const Icon(
                              Icons.search_sharp,
                              color: Colors.white,
                              size: 24,
                            ),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 2,
                            ),
                          ),
                          style:  GoogleFonts.signikaNegative(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 90,
                          height: 32,
                          constraints: const BoxConstraints(
                            maxHeight: 32,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0x14000000),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x32171717),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: const Color(0x1E000000),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 2, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 3, 0),
                                  child: Text(
                                    'Fever',
                                    style: GoogleFonts.signikaNegative(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      1, 2, 0, 0),
                                  child: Icon(
                                    Icons.highlight_off,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 120,
                            height: 32,
                            constraints: const BoxConstraints(
                              maxHeight: 32,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0x14000000),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x32171717),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: const Color(0x1F000000),
                              ),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(8, 0, 2, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 3, 0),
                                    child: Text(
                                      'Sore Throat',
                                      style:  GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1, 2, 0, 0),
                                    child: Icon(
                                      Icons.highlight_off,
                                      color: Colors.white,
                                      size: 15,
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
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 60,
                            height: 32,
                            constraints: const BoxConstraints(
                              maxHeight: 32,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0x15000000),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x32171717),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: const Color(0x1E000000),
                              ),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(8, 0, 2, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 3, 0),
                                    child: Text(
                                      'Flu',
                                      style:  GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1, 2, 0, 0),
                                    child: Icon(
                                      Icons.highlight_off,
                                      color: Colors.white,
                                      size: 15,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                child: Text(
                  'How are you feeling?',
                  style:  GoogleFonts.signikaNegative(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                child: TextFormField(
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
                    suffixIcon: const Icon(
                      Icons.add_a_photo,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  style:  GoogleFonts.signikaNegative(
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(215, 16, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Save',
                  icon: const Icon(
                    Icons.save,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: const Color(0xFF8090BE),
                    textStyle:  GoogleFonts.signikaNegative(
                      color: Colors.white,
                    ),
                    elevation: 3,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

