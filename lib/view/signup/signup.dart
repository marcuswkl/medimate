import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../login/login.dart';
import '../signup/profile_setup/profile_setup_1.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  late TextEditingController textController3;
  late bool passwordVisibility;
  late TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    passwordVisibility = false;
    textController4 = TextEditingController();
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 50, 20, 0),
                              child: Text(
                                'Get Started',
                                style: GoogleFonts.fredokaOne(
                                  color: Colors.black,
                                  fontSize: 42,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/logo.png',
                              width: 43,
                              height: 104,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: Container(
                          width: 297,
                          child: Text(
                            'Create an account for your MediMate.',
                            style: GoogleFonts.signikaNegative(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 278,
                        height: 26,
                        decoration: const BoxDecoration(),
                        child: Text(
                          'Full Name',
                          style: GoogleFonts.signikaNegative(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Container(
                          width: 278,
                          height: 55,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 2),
                            child: TextFormField(
                              controller: textController1,
                              obscureText: false,
                              decoration: const InputDecoration(
                                hintText: 'Eg: John Doe',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black45,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: GoogleFonts.signikaNegative(),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 278,
                        height: 26,
                        decoration: const BoxDecoration(),
                        child: Text(
                          'Email',
                          style: GoogleFonts.signikaNegative(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Container(
                          width: 278,
                          height: 55,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 2),
                            child: TextFormField(
                              controller: textController2,
                              obscureText: false,
                              decoration: const InputDecoration(
                                hintText: 'Eg: example@gmail.com',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black45,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: GoogleFonts.signikaNegative(),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 278,
                        height: 26,
                        decoration: const BoxDecoration(),
                        child: Text(
                          'Password',
                          style: GoogleFonts.signikaNegative(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Container(
                          width: 278,
                          height: 55,
                          decoration: const BoxDecoration(),
                          child: TextFormField(
                            controller: textController3,
                            obscureText: !passwordVisibility,
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black45,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () =>
                                      passwordVisibility = !passwordVisibility,
                                ),
                                child: Icon(
                                  passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: const Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: GoogleFonts.signikaNegative(),
                          ),
                        ),
                      ),
                      Container(
                        width: 278,
                        height: 26,
                        decoration: const BoxDecoration(),
                        child: Text(
                          'IC Number',
                          style: GoogleFonts.signikaNegative(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: Container(
                          width: 278,
                          height: 55,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 2),
                            child: TextFormField(
                              controller: textController4,
                              obscureText: false,
                              decoration: const InputDecoration(
                                hintText: 'XXXXXX-XX-XXXX',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black45,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: GoogleFonts.signikaNegative(),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: ElevatedButton(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileSetup1Widget(),
                                  ),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF809BCE)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(286, 45)),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.signikaNegative(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 5, 0),
                            child: Text(
                              'Already have an account?',
                              style: GoogleFonts.signikaNegative(
                                color: const Color(0xFF809BCE),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginWidget(),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
                              style: GoogleFonts.signikaNegative(
                                  color: const Color(0xFF102D51),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
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
