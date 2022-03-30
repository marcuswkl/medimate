import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

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
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    searchFieldController = TextEditingController();
    textController2 = TextEditingController();
  }

  _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // do something with query
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
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
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                  iconSize: 42,
                  color: const Color(0xFF809BCE),
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 25,
                    // borderRadius: 16,
                  ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Medical Journal',
                      style: GoogleFonts.fredokaOne(
                      color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'Are you exhibiting any symptoms?',
                      style: GoogleFonts.signikaNegative(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
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
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: const Color(0xFF809BCE),
                        contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        prefixIcon: const Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      style: GoogleFonts.signikaNegative(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
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
                                const Icon(
                                  Icons.highlight_off,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Container(
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
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.highlight_off,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Container(
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
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.highlight_off,
                                    color: Colors.white,
                                    size: 15,
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
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Text(
                      'How are you feeling?',
                      style: GoogleFonts.signikaNegative(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Stack(
                      alignment: const AlignmentDirectional(1, 1),
                      children: [
                        TextFormField(
                          onChanged: _onSearchChanged(
                            'textController2',
                          ),
                          controller: textController2,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie eros lectus, in convallis velit rutrum a.',
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
                            const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                          ),
                          style: GoogleFonts.getFont(
                            'Signika Negative',
                            color: const Color(0xFF919BA5),
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                          maxLines: 10,
                        ),
                        IconButton(
                          // iconSize: 30,
                          color: Colors.black,
                          // borderRadius: 30,
                          // borderWidth: 1,
                          // buttonSize: 60,
                          icon: const Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF8090BE),
                              minimumSize: const Size(130,40),
                              elevation: 3,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              )
                          ),
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.save,
                                size: 20,
                              ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: Text(
                            'Save',
                            style: GoogleFonts.signikaNegative(
                              color: Colors.white,
                              fontSize: 16,
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
        ),
      ),
    );
  }
}

