import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'Profile.dart';
import 'SubmitButton.dart';


// Input Values
Map<String, String> input = {
  'Breakfast' : '8:00 AM',
  'Lunch' : '1:30 PM',
  'Dinner' : '7:00 PM',
  'Bedtime' : '11:00 PM',
};
final List<String> questions = input.keys.toList();
final List<String> answers = input.values.toList();


// Settings Tab
class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);
  
  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {  
  // var timeStore = <String, double>{};
  List<DateTime> timeStore = [];

  //Form Input
  final settingsFormKey = GlobalKey < FormState > ();
  List<TextEditingController> myController = List.generate(questions.length, (i) => TextEditingController());
  @override
  void initState() {
    super.initState();
    for (int i=0; i<questions.length; i++){
      myController[i] = TextEditingController (text: answers[i]);
      
      // print(double.parse(answers[i].split(":")[0]));
      // TimeOfDay tempTime = TimeOfDay(hour:int.parse(answers[i].split(":")[0]),minute: int.parse(answers[i].split(":")[1].replaceAll('PM', '').replaceAll('AM', '')));
      // timeStore.add(tempTime.hour.toDouble() + (tempTime.minute.toDouble() / 60));
      DateTime time = DateFormat('hh:mm a').parse(answers[i]);
      DateTime dateNow = DateTime.now();
      DateTime timeSelected = DateTime(dateNow.year, dateNow.month, dateNow.day, time.hour, time.minute);
      timeStore.add(timeSelected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isEditable,
      builder: (context, value, widget) {
    return Form(
      key: settingsFormKey,
      child: SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            slivers: [
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverPadding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate ((BuildContext context, int index){
                    return (index == 0)
                    ? titleWidget()
                    : cardWidget(input1: questions[index-1], input2: answers[index-1], editable: value);
                  },
                  childCount: questions.length+1,
                ))
              ),
              if (value == true)...[
                SliverToBoxAdapter(
                  child: SubButton(FormKey: settingsFormKey),
                )
              ]
            ],
          );
        }
      )));
    });
  }
            
  //Display Header
  Widget titleWidget () {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
          Text(
            'Timing',
            style: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
          // ),
          ),
        ],
      ),
    );
  } 

  Widget cardWidget({required String input1, required input2, required editable}) {  
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [

        if (input1 == questions[0])...[
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFCB77),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(0),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            input1,
                            style: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(5),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              enabled: editable,
                              focusNode: FocusNode(),
                              enableInteractiveSelection: editable,
                              controller: myController[0],
                              style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Please enter your ${input1.toLowerCase()}',
                              ),
                              onTap: () async{
                                FocusScope.of(context).requestFocus(FocusNode());
                                var time = await showTimePicker(
                                  context: context, 
                                  initialTime: TimeOfDay.fromDateTime(timeStore[0]),
                                );

                              if (time != null){
                                final dateNow = DateTime.now();
                                DateTime timeSelected = DateTime(dateNow.year, dateNow.month, dateNow.day, time.hour, time.minute);
                                if (timeSelected.isAfter(timeStore[1]) || timeSelected.isAfter(timeStore[2]) || timeSelected.isAfter(timeStore[3]) ){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Unable to Save Edits'),
                                      content: const Text('Invalid Time Sequence'),
                                      actions: <Widget>[
                                        IconButton(
                                            icon: const Icon(Icons.close),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            })
                                      ],
                                  ));
                                }
                                else {
                                  myController[0].text = DateFormat.jm().format(timeSelected);
                                  timeStore[0] = timeSelected;
                                }
                              }
                            },
                            onSaved: (String? value) {
                              //save
                              print("saved");
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a valid ${input1.toLowerCase()}';
                              }
                              return null; 
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
            )
          )
        ]

        else if (input1 == questions[1])...[
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00B4D8),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(0),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            input1,
                            style: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(5),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              enabled: editable,
                              focusNode: FocusNode(),
                              enableInteractiveSelection: editable,
                              controller: myController[1],
                              style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Please enter your ${input1.toLowerCase()}',
                              ),
                              onTap: () async{
                                FocusScope.of(context).requestFocus(FocusNode());
                                var time = await showTimePicker(
                                  context: context, 
                                  initialTime: TimeOfDay.fromDateTime(timeStore[1]),
                                );
                                
                              if (time != null){
                                final dateNow = DateTime.now();
                                DateTime timeSelected = DateTime(dateNow.year, dateNow.month, dateNow.day, time.hour, time.minute);
                                if (timeSelected.isBefore(timeStore[0]) || timeSelected.isAfter(timeStore[2]) || timeSelected.isAfter(timeStore[3]) ){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Unable to Save Edits'),
                                      content: const Text('Invalid Time Sequence'),
                                      actions: <Widget>[
                                        IconButton(
                                            icon: const Icon(Icons.close),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            })
                                      ],
                                  ));
                                }
                                else {
                                  myController[1].text = DateFormat.jm().format(timeSelected);
                                  timeStore[1] = timeSelected;
                                }
                              }
                            },
                            onSaved: (String? value) {
                              //save
                              print("saved");
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a valid ${input1.toLowerCase()}';
                              }
                              return null; 
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
            )
          )
        ]

        else if (input1 == questions[2])...[
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    decoration: BoxDecoration(
                      color: const Color(0xFF023E8A),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(0),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            input1,
                            style: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(5),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              enabled: editable,
                              focusNode: FocusNode(),
                              enableInteractiveSelection: editable,
                              controller: myController[2],
                              style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Please enter your ${input1.toLowerCase()}',
                              ),
                              onTap: () async{
                                FocusScope.of(context).requestFocus(FocusNode());
                                var time = await showTimePicker(
                                  context: context, 
                                  initialTime: TimeOfDay.fromDateTime(timeStore[2]),
                                );
                              if (time != null){
                                final dateNow = DateTime.now();
                                DateTime timeSelected = DateTime(dateNow.year, dateNow.month, dateNow.day, time.hour, time.minute);
                                if (timeSelected.isBefore(timeStore[0]) || timeSelected.isBefore(timeStore[1]) || timeSelected.isAfter(timeStore[3]) ){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Unable to Save Edits'),
                                      content: const Text('Invalid Time Sequence'),
                                      actions: <Widget>[
                                        IconButton(
                                            icon: const Icon(Icons.close),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            })
                                      ],
                                  ));
                                }
                                else {
                                  myController[2].text = DateFormat.jm().format(timeSelected);
                                  timeStore[2] = timeSelected;
                                }
                              }
                            },
                            onSaved: (String? value) {
                              //save
                              print("saved");
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a valid ${input1.toLowerCase()}';
                              }
                              return null; 
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
            )
          )
        ]

        else if (input1 == questions[3])...[
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    decoration: BoxDecoration(
                      color: const Color(0xFF023E8A),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(0),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            input1,
                            style: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(5),
                      ),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              enabled: editable,
                              focusNode: FocusNode(),
                              enableInteractiveSelection: editable,
                              controller: myController[3],
                              style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Please enter your ${input1.toLowerCase()}',
                              ),
                              onTap: () async{
                                FocusScope.of(context).requestFocus(FocusNode());
                                var time = await showTimePicker(
                                  context: context, 
                                  initialTime: TimeOfDay.fromDateTime(timeStore[3]),
                                );
                              if (time != null){
                                final dateNow = DateTime.now();
                                DateTime timeSelected = DateTime(dateNow.year, dateNow.month, dateNow.day, time.hour, time.minute);
                                if (timeSelected.isBefore(timeStore[0]) || timeSelected.isBefore(timeStore[1]) || timeSelected.isBefore(timeStore[2]) ){
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('Unable to Save Edits'),
                                      content: const Text('Invalid Time Sequence'),
                                      actions: <Widget>[
                                        IconButton(
                                            icon: const Icon(Icons.close),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            })
                                      ],
                                  ));
                                }
                                else {
                                  myController[3].text = DateFormat.jm().format(timeSelected);
                                  timeStore[3] = timeSelected;
                                }
                              }
                            },
                            onSaved: (String? value) {
                              //save
                              print("saved");
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a valid ${input1.toLowerCase()}';
                              }
                              return null; 
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
            )
          )
        ]
      
      
      ]
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