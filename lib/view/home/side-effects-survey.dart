import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SideEffectsSurveyWidget extends StatefulWidget {
  const SideEffectsSurveyWidget({Key key}) : super(key: key);

  @override
  _SideEffectsSurveyWidgetState createState() =>
      _SideEffectsSurveyWidgetState();
}

class _SideEffectsSurveyWidgetState extends State<SideEffectsSurveyWidget> {
  TextEditingController searchFieldController;
  TextEditingController textController2;
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 16,
                  borderWidth: 1,
                  buttonSize: 42,
                  fillColor: Color(0xFF809BCE),
                  icon: Icon(
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
                padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                child: Text(
                  'Medical Journal',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Fredoka One',
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                child: Text(
                  'Are you exhibiting any symptoms?',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Signika Negative',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: TextFormField(
                          controller: searchFieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                            ),
                            hintStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0x98FFFFFF),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Color(0xFF809BCE),
                            contentPadding:
                            EdgeInsetsDirectional.fromSTEB(24, 20, 20, 20),
                            prefixIcon: Icon(
                              Icons.search_sharp,
                              color: Colors.white,
                              size: 24,
                            ),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 2,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 90,
                          height: 32,
                          constraints: BoxConstraints(
                            maxHeight: 32,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0x14000000),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x32171717),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Color(0x1E000000),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 2, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 3, 0),
                                  child: Text(
                                    'Fever',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                      fontFamily: 'Signika Negative',
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Padding(
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
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 120,
                            height: 32,
                            constraints: BoxConstraints(
                              maxHeight: 32,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0x14000000),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x32171717),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color(0x1F000000),
                              ),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 2, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 3, 0),
                                    child: Text(
                                      'Sore Throat',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Signika Negative',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 60,
                            height: 32,
                            constraints: BoxConstraints(
                              maxHeight: 32,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0x15000000),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x32171717),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color(0x1E000000),
                              ),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 2, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 3, 0),
                                    child: Text(
                                      'Flu',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Signika Negative',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                padding: EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                child: Text(
                  'How are you feeling?',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Signika Negative',
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                child: TextFormField(
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(1),
                    ),
                    contentPadding:
                    EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
                    suffixIcon: Icon(
                      Icons.add_a_photo,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Signika Negative',
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 10,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(215, 16, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Save',
                  icon: Icon(
                    Icons.save,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF8090BE),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
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

