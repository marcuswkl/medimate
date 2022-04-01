import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'medication_list.dart';

class NearbyPharmacyWidget extends StatefulWidget {
  const NearbyPharmacyWidget({Key? key}) : super(key: key);

  @override
  _NearbyPharmacyWidgetState createState() => _NearbyPharmacyWidgetState();
}

class _NearbyPharmacyWidgetState extends State<NearbyPharmacyWidget> {
  // late LatLng googleMapsCenter;
  // late Completer<GoogleMapController> googleMapsController;
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
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
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                      child: IconButton(
                        iconSize: 60,
                        color: const Color(0x00FCFCFC),
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MedicationList()));
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'Nearby Pharmacy',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.fredokaOne(
                            color: Colors.black,
                            fontSize: 22,
                            ),

                    // FlutterFlowTheme.of(context).bodyText1.override(
                    //       fontFamily: 'Fredoka One',
                    //       color: Colors.black,
                    //       fontSize: 22,
                    //     ),

                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: const BoxDecoration(),
                    child: Text(
                      'Medication List',
                      style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal,fontStyle: FontStyle.italic,),
                    )
                    
                    // GoogleMap(
                    //   controller: googleMapsController,
                    //   onCameraIdle: (latLng) =>
                    //       setState(() => googleMapsCenter = latLng),
                    //   initialLocation: googleMapsCenter ??=
                    //       LatLng(13.1, -59.613158),
                    //   markerColor: GoogleMarkerColor.violet,
                    //   mapType: MapType.normal,
                    //   style: GoogleMapStyle.standard,
                    //   initialZoom: 14,
                    //   allowInteraction: true,
                    //   allowZoom: true,
                    //   showZoomControls: false,
                    //   showLocation: true,
                    //   showCompass: false,
                    //   showMapToolbar: false,
                    //   showTraffic: false,
                    //   centerMapOnMarkerTap: true,
                    // ),

                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFF809BCE),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2,
                                color: Color(0x4E000000),
                                offset: Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xFF809BCE),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                  child: Icon(
                                    Icons.search_rounded,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                    child: TextFormField(
                                      controller: textController,
                                      obscureText: false,
                                      decoration: const InputDecoration(
                                        labelText: 'Search location',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: GoogleFonts.signikaNegative(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              ),
                                      
                                      // FlutterFlowTheme.of(context)
                                      //     .bodyText1
                                      //     .override(
                                      //       fontFamily: 'Signika Negative',
                                      //       color: Colors.white,
                                      //       fontSize: 18,
                                      //       fontWeight: FontWeight.w300,
                                      //     ),

                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.95, 0),
                                    child: Icon(
                                      Icons.tune_rounded,
                                      color: Colors.white,
                                      size: 24,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/watsons.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Watsons Pharmacy',
                                style: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                        fontSize: 20,
                                        ),
                                
                                // FlutterFlowTheme.of(context)
                                //     .bodyText1
                                //     .override(
                                //       fontFamily: 'Signika Negative',
                                //       color: Colors.black,
                                //       fontSize: 20,
                                //     ),

                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '2.5 km',
                              style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic,
                                      ),
                              
                              // FlutterFlowTheme.of(context)
                              //     .bodyText1
                              //     .override(
                              //       fontFamily: 'Signika Negative',
                              //       color: Colors.black,
                              //       fontSize: 16,
                              //       fontWeight: FontWeight.normal,
                              //       fontStyle: FontStyle.italic,
                              //     ),

                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Contact: ',
                            style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      ),

                                // FlutterFlowTheme.of(context).bodyText1.override(
                                //       fontFamily: 'Signika Negative',
                                //       color: Colors.black,
                                //       fontWeight: FontWeight.bold,
                                //     ),
                          ),
                          Text(
                            '1300 880 847',
                            style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      ),

                                // FlutterFlowTheme.of(context).bodyText1.override(
                                //       fontFamily: 'Signika Negative',
                                //       color: Colors.black,
                                //       fontWeight: FontWeight.normal,
                                //     ),

                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Operating Hours: ',
                            style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      ),

                                // FlutterFlowTheme.of(context).bodyText1.override(
                                //       fontFamily: 'Signika Negative',
                                //       color: Colors.black,
                                //       fontWeight: FontWeight.bold,
                                //     ),

                          ),
                          Text(
                            '9.00AM - 9.00PM',
                            style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      ),

                                // FlutterFlowTheme.of(context).bodyText1.override(
                                //       fontFamily: 'Signika Negative',
                                //       color: Colors.black,
                                //       fontWeight: FontWeight.normal,
                                //     ),

                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Available Days: ',
                            style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      ),

                                // FlutterFlowTheme.of(context).bodyText1.override(
                                //       fontFamily: 'Signika Negative',
                                //       color: Colors.black,
                                //       fontWeight: FontWeight.bold,
                                //     ),

                          ),
                          Text(
                            'Monday - Friday',
                            style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      ),

                                // FlutterFlowTheme.of(context).bodyText1.override(
                                //       fontFamily: 'Signika Negative',
                                //       color: Colors.black,
                                //       fontWeight: FontWeight.normal,
                                //     ),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
