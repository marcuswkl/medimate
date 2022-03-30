import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medimate',
      home: LandingWidget(),
    );
  }
}

class LandingWidget extends StatefulWidget {
  const LandingWidget({Key? key}) : super(key: key);

  @override
  _LandingWidgetState createState() => _LandingWidgetState();
}

class _LandingWidgetState extends State<LandingWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Image.asset(
                      'assets/images/MediMate.png',
                      width: 290,
                      height: 63,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Image.asset(
                      'assets/images/Logo.png',
                      width: 105,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: ElevatedButton(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Column() // TODO: Replace with LoginWidget(),
                              ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF809BCE)),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(284, 53)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.signikaNegative(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: ElevatedButton(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Column() // TODO: Replace with SignUpWidget(),
                              ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(284, 53)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF393939),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.signikaNegative(
                          color: const Color(0xFF515151),
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'By signing in, you agree to our Terms of\nService and Privacy Policy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
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
