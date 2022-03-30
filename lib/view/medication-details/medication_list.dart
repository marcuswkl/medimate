import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MedicationList extends StatefulWidget {
  const MedicationList({Key? key}) : super(key: key);

  @override
  _MedicationListState createState() => _MedicationListState();
}

class _MedicationListState extends State<MedicationList> {
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
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Medication List',
                        style: GoogleFonts.fredokaOne(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.normal,
                                ),
                        //FlutterFlowTheme.of(context).bodyText1.override(
                         //     fontFamily: 'Fredoka One',
                        //      color: Colors.black,
                         //     fontSize: 28,
                         //     fontWeight: FontWeight.normal,
                         //   ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Text(
                          'Active Meds',
                          style: GoogleFonts.signikaNegative(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  ),
                             // FlutterFlowTheme.of(context).bodyText1.override(
                             //       fontFamily: 'Signika Negative',
                             //       color: Colors.black,
                              //      fontWeight: FontWeight.w300,
                             //     ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                                  child: IconButton(
                                    iconSize: 50,
                                    color: Colors.black,
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    onPressed: () {},
                                    ),
                                  ),
                                ),
                        
                       // FlutterFlowIconButton(
                       //   borderColor: Colors.transparent,
                       //   borderRadius: 30,
                        //  borderWidth: 1,
                       //   buttonSize: 40,
                       //   icon: const Icon(
                       //     Icons.delete,
                       //     color: Colors.black,
                       //     size: 30,
                       //   ),
                        //  onPressed: () {},
                       // ),
                        
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF79747E),
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: ExpandableNotifier(
                                        initialExpanded: false,
                                        child: ExpandablePanel(
                                          header: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Image.asset('assets/images/medicine.png',
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Coughing Medicine',
                                                            style: GoogleFonts.signikaNegative(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w600,
                                                                    ),
                                                            
                                                            //FlutterFlowTheme
                                                           //         .of(context)
                                                           //     .bodyText1
                                                            //    .override(
                                                            //      fontFamily:
                                                            //          'Signika Negative',
                                                            //      color: Colors
                                                            //          .black,
                                                             //     fontSize: 20,
                                                             //     fontWeight:
                                                             //         FontWeight
                                                              //            .w600,
                                                              //  ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:MainAxisSize.max,
                                                          mainAxisAlignment:MainAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              'Benzonatate',
                                                              style: GoogleFonts.signikaNegative(
                                                                      color: Colors.black,
                                                                      fontWeight: FontWeight.w500,
                                                                      ),
                                                              //FlutterFlowTheme
                                                              //        .of(context)
                                                               //   .bodyText1
                                                               //   .override(
                                                               //     fontFamily:'Signika Negative',
                                                               //     color: Colors.black,
                                                               //     fontWeight:FontWeight.w500,
                                                               //   ),
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
                                          collapsed: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(70, 5, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'More details',
                                                  style: GoogleFonts.signikaNegative(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w300,
                                                          fontStyle: FontStyle.italic,
                                                          ),
                                                  //FlutterFlowTheme.of(context)
                                                  //    .bodyText1
                                                   //   .override(
                                                   //     fontFamily:'Signika Negative',
                                                  //      color: Colors.black,
                                                  //      fontSize: 14,
                                                  //      fontWeight:FontWeight.w300,
                                                   //   ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          expanded: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 5,
                                                  child: Column(
                                                    mainAxisSize:MainAxisSize.max,
                                                    crossAxisAlignment:CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                                                        child: Text(
                                                          'Adherance Rate',
                                                          textAlign: TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                          //    .override(
                                                          //      fontFamily:'Signika Negative',
                                                          //      color: Colors.black,
                                                          //      fontSize: 15,
                                                          //      fontWeight:FontWeight.w600,
                                                          //    ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '100%',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                          //    .override(
                                                          //      fontFamily:'Signika Negative',
                                                          //      color: Colors.black,
                                                          //      fontWeight:FontWeight.normal,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: 1,
                                                          width: 130,
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor:const Color(0xFF809BCE),
                                                          backgroundColor:const Color(0xFFF1F4F8),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 25,0, 0),
                                                        child: Text(
                                                          'Supply Rate',
                                                          textAlign: TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                          //    .override(
                                                          //      fontFamily:'Signika Negative',
                                                          //      color: Colors.black,
                                                          //      fontSize: 15,
                                                          //      fontWeight:FontWeight.w600,
                                                          //    ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '20%',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                          //    .override(
                                                          //      fontFamily:'Signika Negative',
                                                          //      color: Colors.black,
                                                          //      fontWeight:FontWeight.normal,
                                                          //    ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: 0.2,
                                                          width: 130,
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor: const Color(0xFF809BCE),
                                                          backgroundColor: const Color(0xFFD3D6E7),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 5,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                                                        child: Text(
                                                          'Completion Rate',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                          //    .override(
                                                           //     fontFamily:'Signika Negative',
                                                          //      color: Colors.black,
                                                          //      fontSize: 15,
                                                          //      fontWeight:FontWeight.w600,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '50%',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          //FlutterFlowTheme.of(context)
                                                          //   .bodyText1
                                                          //    .override(
                                                           //     fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                           //     fontWeight:FontWeight.normal,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: 0.5,
                                                          width: 130,
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor: const Color(0xFF809BCE),
                                                          backgroundColor: const Color(0xFFD3D6E7),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:MainAxisSize.max,
                                                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsetsDirectional.fromSTEB(0,30,5,0),
                                                            child: ElevatedButton(
                                                                    style: ElevatedButton.styleFrom(
                                                                      primary: const Color(0xFF809BCE),
                                                                      minimumSize: const Size(80,30),
                                                                      elevation: 5,
                                                                      shape: const RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                      )
                                                                    ),
                                                                    onPressed: (){},
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                          child: Text(
                                                                            'RESTOCK',
                                                                            style: GoogleFonts.signikaNegative(
                                                                                    color: Colors.white,
                                                                                    fontSize: 12,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    ),
                                                                            )
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),


                                                            //    FFButtonWidget(
                                                           //  onPressed: () {},
                                                           //   text: 'RESTOCK',
                                                            //  options:
                                                         //         FFButtonOptions(
                                                            //    width: 80,
                                                            //    color:  const Color(0xFF809BCE),
                                                            //    textStyle: FlutterFlowTheme.of(context)
                                                            //        .subtitle2
                                                            //        .override(
                                                           //           fontFamily:'Signika Negative',
                                                           //           color: Colors.white,
                                                           //           fontSize:12,
                                                           //           fontWeight:FontWeight.w500,
                                                          //          ),
                                                          //      borderSide: const BorderSide(
                                                          //        color: Colors.transparent,
                                                          //        width: 1,
                                                          //      ),
                                                         //       borderRadius:50,
                                                          //    ),
                                                         //   ),


                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsetsDirectional.fromSTEB(0,30,0,0),
                                                            child: ElevatedButton(
                                                                    style: ElevatedButton.styleFrom(
                                                                      primary: const Color(0xFF809BCE),
                                                                      minimumSize: const Size(65,30),
                                                                      elevation: 5,
                                                                      shape: const RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                      )
                                                                    ),
                                                                    onPressed: (){},
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                          child: Text(
                                                                            'INFO',
                                                                            style: GoogleFonts.signikaNegative(
                                                                                    color: Colors.white,
                                                                                    fontSize: 12,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    ),
                                                                            )
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),

                                                            //     FFButtonWidget(
                                                            //   onPressed: () {},
                                                            //   text: 'INFO',
                                                            //   options:
                                                            //       FFButtonOptions(
                                                            //     width: 65,
                                                            //     height: 30,
                                                            //     color: const Color(0xFF809BCE),
                                                            //     textStyle: FlutterFlowTheme.of(context)
                                                            //         .subtitle2
                                                            //         .override(
                                                            //           fontFamily:'Signika Negative',
                                                            //           color: Colors.white,
                                                            //           fontSize:12,
                                                            //           fontWeight:FontWeight.w500,
                                                            //         ),
                                                            //     borderSide: const BorderSide(
                                                            //       color: Colors.transparent,
                                                            //       width: 1,
                                                            //     ),
                                                            //     borderRadius:
                                                            //         50,
                                                            //   ),
                                                            // ),


                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          theme: const ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:ExpandablePanelHeaderAlignment.center,
                                            hasIcon: true,
                                            expandIcon:
                                                Icons.keyboard_arrow_down,
                                            collapseIcon:
                                                Icons.keyboard_arrow_up,
                                            iconPadding: EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF79747E),
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: ExpandableNotifier(
                                        initialExpanded: false,
                                        child: ExpandablePanel(
                                          header: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Image.asset('assets/images/medicine.png',
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Panadol',
                                                            style: GoogleFonts.signikaNegative(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w600,
                                                                    ),
                                                            
                                                            //FlutterFlowTheme.of(context)
                                                             //   .bodyText1
                                                             //   .override(
                                                             //     fontFamily:'Signika Negative',
                                                             //     color: Colors.black,
                                                            //      fontSize: 20,
                                                             //     fontWeight:FontWeight.w600,
                                                             //   ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:MainAxisSize.max,
                                                          mainAxisAlignment:MainAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              '-',
                                                              style: GoogleFonts.signikaNegative(
                                                                      color: Colors.black,
                                                                      fontWeight: FontWeight.w500,
                                                                      ),
                                                              
                                                              //FlutterFlowTheme.of(context)
                                                               //   .bodyText1
                                                              //    .override(
                                                              //      fontFamily:'Signika Negative',
                                                              //      color: Colors.black,
                                                              //      fontWeight:FontWeight.w500,
                                                              //    ),
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
                                          collapsed: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(70, 5, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'More details ',
                                                  style: GoogleFonts.signikaNegative(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w300,
                                                          fontStyle: FontStyle.italic,
                                                          ),
                                                  
                                                   //   FlutterFlowTheme.of(context)
                                                   //      .bodyText1
                                                  //    .override(
                                                   //     fontFamily:'Signika Negative',
                                                   //     color: Colors.black,
                                                   //     fontSize: 14,
                                                    //    fontWeight:FontWeight.w300,
                                                    //    fontStyle:FontStyle.italic,
                                                   //   ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          expanded: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:MainAxisAlignment.center,
                                              crossAxisAlignment:CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 5,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                                                        child: Text(
                                                          'Adherance Rate',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                           //   .bodyText1
                                                           //   .override(
                                                           //     fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                           //     fontSize: 15,
                                                           //     fontWeight:FontWeight.w600,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '100%',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                           //   .override(
                                                          //      fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                           //     fontWeight:FontWeight.normal,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: 1,
                                                          width: 130,
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor: const Color(0xFF809BCE),
                                                          backgroundColor: const Color(0xFFF1F4F8),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 25,0, 0),
                                                        child: Text(
                                                          'Supply Rate',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                          //    .override(
                                                          //      fontFamily:'Signika Negative',
                                                          //      color: Colors.black,
                                                           //     fontSize: 15,
                                                           //     fontWeight:FontWeight.w600,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '20%',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                           //   .override(
                                                           //     fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                           //     fontWeight:FontWeight.normal,
                                                          //    ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: 0.2,
                                                          width: 130,
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor: const Color(0xFF809BCE),
                                                          backgroundColor: const Color(0xFFD3D6E7),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 5,
                                                  child: Column(
                                                    mainAxisSize:MainAxisSize.max,
                                                    crossAxisAlignment:CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                                                        child: Text(
                                                          'Completion Rate',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                          //    .override(
                                                           //     fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                           //     fontSize: 15,
                                                           //     fontWeight:FontWeight.w600,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '50%',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                           //   .bodyText1
                                                           //   .override(
                                                           //     fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                           //     fontWeight:FontWeight.normal,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: 0.5,
                                                          width: 130,
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor: const Color(0xFF809BCE),
                                                          backgroundColor: const Color(0xFFD3D6E7),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:MainAxisSize.max,
                                                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsetsDirectional.fromSTEB( 0,30,5,0),
                                                            child: ElevatedButton(
                                                                    style: ElevatedButton.styleFrom(
                                                                      primary: const Color(0xFF809BCE),
                                                                      minimumSize: const Size(80,30),
                                                                      elevation: 5,
                                                                      shape: const RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                      )
                                                                    ),
                                                                    onPressed: (){},
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                          child: Text(
                                                                            'RESTOCK',
                                                                            style: GoogleFonts.signikaNegative(
                                                                                    color: Colors.white,
                                                                                    fontSize: 12,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    ),
                                                                            )
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),


                                                            //     FFButtonWidget(
                                                            //   onPressed: () {},
                                                            //   text: 'RESTOCK',
                                                            //   options:
                                                            //       FFButtonOptions(
                                                            //     width: 80,
                                                            //     height: 30,
                                                            //     color: const Color(0xFF809BCE),
                                                            //     textStyle: FlutterFlowTheme.of(
                                                            //             context)
                                                            //         .subtitle2
                                                            //         .override(
                                                            //           fontFamily:
                                                            //               'Signika Negative',
                                                            //           color: Colors
                                                            //               .white,
                                                            //           fontSize:
                                                            //               12,
                                                            //           fontWeight:
                                                            //               FontWeight
                                                            //                   .w500,
                                                            //         ),
                                                            //     borderSide: const BorderSide(
                                                            //       color: Colors.transparent,
                                                            //       width: 1,
                                                            //     ),
                                                            //     borderRadius:
                                                            //         50,
                                                            //   ),
                                                            // ),


                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsetsDirectional.fromSTEB(0,30,0,0),
                                                            child: ElevatedButton(
                                                                    style: ElevatedButton.styleFrom(
                                                                      primary: const Color(0xFF809BCE),
                                                                      minimumSize: const Size(65,30),
                                                                      elevation: 5,
                                                                      shape: const RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                      )
                                                                    ),
                                                                    onPressed: (){},
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                          child: Text(
                                                                            'INFO',
                                                                            style: GoogleFonts.signikaNegative(
                                                                                    color: Colors.white,
                                                                                    fontSize: 12,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    ),
                                                                            )
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),


                                                            //     FFButtonWidget(
                                                            //   onPressed: () {
                                                            //     print(
                                                            //         'Button pressed ...');
                                                            //   },
                                                            //   text: 'INFO',
                                                            //   options:
                                                            //       FFButtonOptions(
                                                            //     width: 65,
                                                            //     height: 30,
                                                            //     color: const Color(0xFF809BCE),
                                                            //     textStyle: FlutterFlowTheme.of(
                                                            //             context)
                                                            //         .subtitle2
                                                            //         .override(
                                                            //           fontFamily:
                                                            //               'Signika Negative',
                                                            //           color: Colors
                                                            //               .white,
                                                            //           fontSize:
                                                            //               12,
                                                            //           fontWeight:
                                                            //               FontWeight
                                                            //                   .w500,
                                                            //         ),
                                                            //     borderSide: const BorderSide(
                                                            //       color: Colors
                                                            //           .transparent,
                                                            //       width: 1,
                                                            //     ),
                                                            //     borderRadius:
                                                            //         50,
                                                            //   ),
                                                            // ),


                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          theme: const ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:ExpandablePanelHeaderAlignment.center,
                                            hasIcon: true,
                                            expandIcon:Icons.keyboard_arrow_down,
                                            collapseIcon:Icons.keyboard_arrow_up,
                                            iconPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF79747E),
                                width: 2,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: ExpandableNotifier(
                                        initialExpanded: false,
                                        child: ExpandablePanel(
                                          header: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Image.asset('assets/images/medicine.png',
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize:MainAxisSize.max,
                                                    mainAxisAlignment:MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Cholesterol Medicine',
                                                            style: GoogleFonts.signikaNegative(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w600,
                                                                    ),
                                                            
                                                            //FlutterFlowTheme.of(context)
                                                           //     .bodyText1
                                                             //   .override(
                                                             //     fontFamily:'Signika Negative',
                                                             //     color: Colors.black,
                                                              //    fontSize: 20,
                                                             //     fontWeight:FontWeight.w600,
                                                            //    ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:MainAxisSize.max,
                                                          mainAxisAlignment:MainAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              'Atorvastarin',
                                                              style: GoogleFonts.signikaNegative(
                                                                      color: Colors.black,
                                                                      fontWeight: FontWeight.w500,
                                                                      ),
                                                              
                                                              //FlutterFlowTheme.of(context)
                                                              //    .bodyText1
                                                              //    .override(
                                                              //      fontFamily:'Signika Negative',
                                                               //     color: Colors.black,
                                                              //      fontWeight:FontWeight.w500,
                                                              //    ),
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
                                          collapsed: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(70, 5, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'More details ',
                                                  style: GoogleFonts.signikaNegative(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w300,
                                                          fontStyle: FontStyle.italic,
                                                          ),
                                                  
                                                  //FlutterFlowTheme.of(context)
                                                  //    .bodyText1
                                                   //   .override(
                                                  //      fontFamily:'Signika Negative',
                                                   //     color: Colors.black,
                                                   //     fontSize: 14,
                                                    //    fontWeight:FontWeight.w300,
                                                   //     fontStyle:FontStyle.italic,
                                                   //  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          expanded: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:MainAxisAlignment.center,
                                              crossAxisAlignment:CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 5,
                                                  child: Column(
                                                    mainAxisSize:MainAxisSize.max,
                                                    crossAxisAlignment:CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                                                        child: Text(
                                                          'Adherance Rate',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                           //   .override(
                                                           //     fontFamily:'Signika Negative',
                                                          //      color: Colors.black,
                                                          //      fontSize: 15,
                                                           //     fontWeight:FontWeight.w600,
                                                           //   ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '100%',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                           //   .bodyText1
                                                          //    .override(
                                                           //     fontFamily:'Signika Negative',
                                                          //      color: Colors.black,
                                                          //      fontWeight:FontWeight.normal,
                                                          //    ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: 1,
                                                          width: 130,
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor:const Color(0xFF809BCE),
                                                          backgroundColor:const Color(0xFFF1F4F8),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 25,0, 0),
                                                        child: Text(
                                                          'Supply Rate',
                                                          textAlign: TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                          //    .override(
                                                            //    fontFamily:'Signika Negative',
                                                              //  color: Colors.black,
                                                                //fontSize: 15,
                                                             //   fontWeight:FontWeight.w600,
                                                             // ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '20%',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                           //   .bodyText1
                                                          //    .override(
                                                           //     fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                            //    fontWeight:FontWeight.normal,
                                                            //  ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                              percent: 0.2,
                                                              width: 130,
                                                              lineHeight: 5,
                                                              animation: true,
                                                              progressColor: const Color(0xFF809BCE),
                                                              backgroundColor: const Color(0xFFD3D6E7),
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 5,
                                                  child: Column(
                                                    mainAxisSize:MainAxisSize.max,
                                                    crossAxisAlignment:CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                                                        child: Text(
                                                          'Completion Rate',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.w600,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                           //   .bodyText1
                                                           //   .override(
                                                           //     fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                           //     fontSize: 15,
                                                            //    fontWeight:FontWeight.w600,
                                                            //  ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                                        child: Text(
                                                          '50%',
                                                          textAlign:TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.normal,
                                                                  ),
                                                          
                                                          //FlutterFlowTheme.of(context)
                                                          //    .bodyText1
                                                           //   .override(
                                                           //     fontFamily:'Signika Negative',
                                                           //     color: Colors.black,
                                                           //     fontWeight:FontWeight.normal,
                                                          //    ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                                        child:
                                                            LinearPercentIndicator(
                                                          percent: 0.5,
                                                          width: 130,
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor: const Color(0xFF809BCE),
                                                          backgroundColor: const Color(0xFFD3D6E7),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:MainAxisSize.max,
                                                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsetsDirectional.fromSTEB(0,30,5,0),
                                                            child: ElevatedButton(
                                                                    style: ElevatedButton.styleFrom(
                                                                      primary: const Color(0xFF809BCE),
                                                                      minimumSize: const Size(80,30),
                                                                      elevation: 5,
                                                                      shape: const RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                      )
                                                                    ),
                                                                    onPressed: (){},
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                          child: Text(
                                                                            'RESTOCK',
                                                                            style: GoogleFonts.signikaNegative(
                                                                                    color: Colors.white,
                                                                                    fontSize: 12,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    ),
                                                                            )
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),

                                                            //     FFButtonWidget(
                                                            //   onPressed: () {
                                                            //   },
                                                            //   text: 'RESTOCK',
                                                            //   options:
                                                            //       FFButtonOptions(
                                                            //     width: 80,
                                                            //     height: 30,
                                                            //     color: const Color(0xFF809BCE),
                                                            //     textStyle: FlutterFlowTheme.of(context)
                                                            //         .subtitle2
                                                            //         .override(
                                                            //           fontFamily:'Signika Negative',
                                                            //           color: Colors.white,
                                                            //           fontSize:12,
                                                            //           fontWeight:FontWeight.w500,
                                                            //         ),
                                                            //     borderSide: const BorderSide(
                                                            //       color: Colors.transparent,
                                                            //       width: 1,
                                                            //     ),
                                                            //     borderRadius:50,
                                                            //   ),
                                                            // ),


                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsetsDirectional.fromSTEB(0,30,0,0),
                                                            child: ElevatedButton(
                                                                    style: ElevatedButton.styleFrom(
                                                                      primary: const Color(0xFF809BCE),
                                                                      minimumSize: const Size(65,30),
                                                                      elevation: 5,
                                                                      shape: const RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                                                      )
                                                                    ),
                                                                    onPressed: (){},
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                          child: Text(
                                                                            'INFO',
                                                                            style: GoogleFonts.signikaNegative(
                                                                                    color: Colors.white,
                                                                                    fontSize: 12,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    ),
                                                                            )
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),


                                                            //     FFButtonWidget(
                                                            //   onPressed: () { },
                                                            //   text: 'INFO',
                                                            //   options:
                                                            //       FFButtonOptions(
                                                            //     width: 65,
                                                            //     height: 30,
                                                            //     color: const Color(0xFF809BCE),
                                                            //     textStyle: FlutterFlowTheme.of(context)
                                                            //         .subtitle2
                                                            //         .override(
                                                            //           fontFamily:'Signika Negative',
                                                            //           color: Colors.white,
                                                            //           fontSize:12,
                                                            //           fontWeight:FontWeight.w500,
                                                            //         ),
                                                            //     borderSide: const BorderSide(
                                                            //       color: Colors.transparent,
                                                            //       width: 1,
                                                            //     ),
                                                            //     borderRadius:50,
                                                            //   ),
                                                            // ),


                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          theme: const ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                            expandIcon:
                                                Icons.keyboard_arrow_down,
                                            collapseIcon:
                                                Icons.keyboard_arrow_up,
                                            iconPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                          ),
                                        ),
                                      ),
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

