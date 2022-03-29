import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Profile.dart';

//Submit Button
class SubButton extends StatefulWidget {
  const SubButton({Key? key, this.FormKey}) : super(key: key);
  final FormKey;

  @override
  _SubButtonState createState() => _SubButtonState();
}

class _SubButtonState extends State<SubButton> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton (
          onPressed: () {
            if (widget.FormKey.currentState!.validate()) {
              widget.FormKey.currentState?.save();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Saving...')),
              );  
              setState(() {isEditable.value = false;});
            }
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFF809BCE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'SAVE CHANGES',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        )
      ]
    );
  }
}