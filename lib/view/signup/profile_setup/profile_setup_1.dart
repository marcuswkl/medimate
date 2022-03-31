import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import '../profile_setup2/profile_setup2_widget.dart';

class ProfileSetup1Widget extends StatefulWidget {
  const ProfileSetup1Widget({Key? key}) : super(key: key);

  @override
  _ProfileSetup1WidgetState createState() => _ProfileSetup1WidgetState();
}

class _ProfileSetup1WidgetState extends State<ProfileSetup1Widget> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
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
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
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
                            const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                        child: Image.asset(
                          'assets/images/profile_details.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.6275,
                        decoration: const BoxDecoration(
                          color: Color(0xFF809BCE),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(66),
                            topRight: Radius.circular(66),
                          ),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: Container(
                                  width: 278,
                                  height: 26,
                                  decoration: const BoxDecoration(),
                                  child: Text(
                                    'What is your phone number?',
                                    style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 20),
                                child: Container(
                                  width: 278,
                                  height: 55,
                                  decoration: const BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(11.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: TextFormField(
                                      controller: textController1,
                                      obscureText: false,
                                      decoration: const InputDecoration(
                                        hintText: 'Eg: +60 12-345 6789',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(11.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(11.0),
                                          ),
                                        ),
                                      ),
                                      style: GoogleFonts.signikaNegative(),
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: Container(
                                  width: 278,
                                  height: 26,
                                  decoration: const BoxDecoration(),
                                  child: Text(
                                    'What is your date of birth?',
                                    style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 20),
                                child: Container(
                                  width: 278,
                                  height: 55,
                                  decoration: const BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(11.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: TextFormField(
                                      controller: textController2,
                                      obscureText: false,
                                      decoration: const InputDecoration(
                                        hintText: 'DD / MM / YYYY',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(11.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(11.0),
                                          ),
                                        ),
                                      ),
                                      style: GoogleFonts.signikaNegative(),
                                      keyboardType: TextInputType.datetime,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 100,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 50, 50),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Column(), //TODO: Replace with ProfileSetup2Widget(),
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
