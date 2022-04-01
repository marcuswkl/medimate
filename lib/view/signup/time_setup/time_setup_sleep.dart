import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import '../welcome/welcome_widget.dart';

class TimeSetupSleepWidget extends StatefulWidget {
  const TimeSetupSleepWidget({Key? key}) : super(key: key);

  @override
  _TimeSetupSleepWidgetState createState() => _TimeSetupSleepWidgetState();
}

class _TimeSetupSleepWidgetState extends State<TimeSetupSleepWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: Image.asset(
                          'assets/images/time_setup.png',
                          width: 169,
                          height: 158,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.565,
                        decoration: const BoxDecoration(
                          color: Color(0xFF023E8A),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(66),
                            topRight: Radius.circular(66),
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 20),
                                child: Container(
                                  width: 281,
                                  height: 58,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      'Please enter the time that you usually sleep:',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 20),
                                child: Container(
                                  width: 287,
                                  height: 105,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF3E7BF),
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                    child: Text(
                                      'Advice: Take your medicine on time to make sure your body has an effective amount of the drug at all times!',
                                      style: GoogleFonts.signikaNegative(
                                        color: Colors.black,
                                        fontSize: 17,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
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
                                            builder: (context) =>
                                                Column(), //TODO: Replace with WelcomeWidget(),
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
                                        'Finish',
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
