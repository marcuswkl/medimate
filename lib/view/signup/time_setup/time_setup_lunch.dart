import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'time_setup_dinner.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class TimeSetupLunchWidget extends StatefulWidget {
  const TimeSetupLunchWidget({Key? key}) : super(key: key);

  @override
  _TimeSetupLunchWidgetState createState() => _TimeSetupLunchWidgetState();
}

class _TimeSetupLunchWidgetState extends State<TimeSetupLunchWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  DateTime? savedTime;

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
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF809BCE),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: IconButton(
                        iconSize: 30,
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                        child: Image.asset(
                          'assets/images/time_setup.png',
                          width: 169,
                          height: 158,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.525,
                        decoration: const BoxDecoration(
                          color: Color(0xFF00B4D8),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(66),
                            topRight: Radius.circular(66),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Container(
                                  width: 281,
                                  height: 58,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 2),
                                    child: Text(
                                      'Please enter the time that you usually have your:',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 282,
                                height: 32,
                                decoration: const BoxDecoration(),
                                child: Text(
                                  'Lunch',
                                  style: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.time,
                                  minuteInterval: 1,
                                  use24hFormat: false,
                                  initialDateTime: savedTime ?? DateTime.now(),
                                  onDateTimeChanged: (DateTime changedtimer) {
                                    setState(() {
                                      savedTime = changedtimer;
                                    });
                                  },
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 50, 50),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const TimeSetupDinnerWidget(),
                                          ),
                                        );
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xFFFFFEFE)),
                                        minimumSize:
                                            MaterialStateProperty.all<Size>(
                                                const Size(103, 35)),
                                        shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                      ),
                                      child: Text(
                                        'Next',
                                        style: GoogleFonts.signikaNegative(
                                          color: Colors.black,
                                          fontSize: 18,
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
                    ],
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
