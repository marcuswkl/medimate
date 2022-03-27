import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//DetailsTab
class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);
  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Temporary cuz I lazy do now',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'signikaNegative')
      ),
    );
  }
}



// //DetailsTab
// class SettingsTab extends StatefulWidget {
//   const SettingsTab({Key? key}) : super(key: key);
//   @override
//   _SettingsTabState createState() => _SettingsTabState();
// }

// class _SettingsTabState extends State<SettingsTab> {
//   // DetailsTab(this.);
//   bool _hide = true;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
//       // child: CustomScrollView(
//         SliverList: (
//           delegate: sliverChildListDelegate(
//             [
//               questionNAnswerWidget1(question: 'Full Name', answer: 'John Doe'),
//               questionNAnswerWidget1(question: 'Email', answer: 'example@gmail.com'),
//               questionNAnswerWidget2(question: 'Password', answer: 'hello'),
//             ],
//           ),
//         );
//   }
//   // Regular Card
//   Widget questionNAnswerWidget1({required String question, required answer}) {
//     return Column(
//     mainAxisSize: MainAxisSize.max,
//     children: [
//       Padding(
//         padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Text(
//               question,
//               style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:'signikaNegative'),
//             ),
//           ],
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: 49,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(2),
//             border: Border.all(
//               color: Colors.black,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Text(
//                   answer,
//                   style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // Password Card
//   Widget questionNAnswerWidget2({required String question, required answer}) {
//     return Column(
//     mainAxisSize: MainAxisSize.max,
//     children: [
//       Padding(
//         padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Text(
//               question,
//               style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:'signikaNegative'),
//             ),
//           ],
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: 49,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(2),
//             border: Border.all(
//               color: Colors.black,
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 TextFormField(
//                   obscureText: _hide,
//                   controller: TextEditingController(text: answer),
//                   style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
//                   enabled: false,
//                   focusNode: FocusNode(),
//                   enableInteractiveSelection: false,
//                   decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                     icon: Icon(
//                         _hide ? Icons.visibility : Icons.visibility_off),
//                       onPressed: () {
//                         setState(() {
//                           _hide = !_hide;
//                         });
//                       }
//                     )
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ]);
//   }
// }