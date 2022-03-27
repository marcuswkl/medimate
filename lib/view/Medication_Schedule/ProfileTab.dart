import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  //Password Field
  bool _hide = false;
  bool _edit = false;

  final List<String> questions = ['Full Name', 'Email', 'Password', 'IC Number', 'Phone Number',]; // 'Date of Birth', 'Gender', 'Drug Allergies'];
  final List<String> answers = ['John Doe', 'example@gmail.com', 'QW12p_asq', '100291-20-2345', '+6012-2345876',]; // 'Date of Birth', 'Gender', 'Drug Allergies'];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            // key: PageStorageKey<String>(name),
            slivers: [
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverPadding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate ((BuildContext context, int index){
                    return cardWidget(input1: questions[index], input2: answers[index]);
                  },
                  childCount: questions.length,
                ))
              ),
            ],
          );
        }
      ),
    );
  }
  
  //Display Values
  Widget cardWidget({required String input1, required input2}) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                input1,
                style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:'signikaNegative'),
              ),
              // // Information Button
              // IconButton(
              //   icon: const Icon(Icons.info_rounded),
              //   onPressed: (){},
              //   tooltip: "Information",
              // )
            ],
          ),
        ),

        //'Full Name', 'Email', 'IC Number', 'Phone Number'
        if (input1 == questions[0] || input1 == questions[1] || input1 == questions[3] || input1 == questions[4]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                  child: TextFormField(
                    //Editable
                    enabled: _edit,
                    focusNode: FocusNode(),
                    enableInteractiveSelection: _edit,
                    
                    style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
                    controller: TextEditingController(text: input2),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Please enter your ${input1.toLowerCase()}',
                    ),
                    onSaved: (String? value) {
                      //save

                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your ${input1.toLowerCase()}';
                      } else if (input1 == questions[0]){ //Full Name
                        RegExp regex = RegExp(r"^[a-zA-Z\-]$");
                        return (regex.hasMatch(value)) ? null : 'Please enter a valid ${input1.toLowerCase()}';
                      } else if (input1 == questions[1]){ // Email
                        RegExp regex = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
                        return (regex.hasMatch(value)) ? null : 'Please enter a valid ${input1.toLowerCase()}';
                      } else if (input1 == questions[3]){ // IC Number
                        RegExp regex = RegExp(r"^\d{6}-\d{2}-\d{4}$");
                        return (regex.hasMatch(value)) ? null : 'Please enter a valid ${input1.toLowerCase()}';
                      } else if (input1 == questions[4]){ // Phone Number
                        RegExp regex = RegExp(r"^(\+?6?01)[0-46-9]-*[0-9]{7,8}$");
                        return (regex.hasMatch(value)) ? null : 'Please enter a valid ${input1.toLowerCase()}';
                      }
                      return null;
                    },
                  )),
                
                ],
              ),
            ),
          ),
        )]

        // 'Password'
        else if (input1 == questions[2]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 7,
                    child: TextFormField(
                    //Editable
                    enabled: _edit,
                    focusNode: FocusNode(),
                    enableInteractiveSelection: _edit,

                    obscureText: !_hide,
                    controller: TextEditingController(text: input2),
                    style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
                    decoration: const InputDecoration(
                      hintText: 'Password should contain: \n - At least one upper case character \n - At least one lower case character \n - At least one digit \n - At least one special character \n - At least 8 characters in length',
                      border: InputBorder.none,
                    ),
                    onSaved: (String? value) {
                            //save
                    },
                    validator: (String? value) {
                      RegExp regex = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$");
                      if (value == null || value.isEmpty) {
                        return 'Please enter a ${input1.toLowerCase()}';
                      } else if (regex.hasMatch(value)) {
                        return 'Please enter a valid ${input1.toLowerCase()}';
                      }
                      return null; 
                    }
                  )),
                  Flexible(
                    flex: 1,
                    child: IconButton(
                      icon: Icon (
                        _hide 
                        ? Icons.visibility 
                        : Icons.visibility_off
                      ),
                      onPressed: () {
                        setState(() {
                          _hide = !_hide;
                        });
                      }
                    ),
                  ),
                ],
              ),
            ),
          ),
        )]
      ]
    );
  }
}

            // 'Date of Birth'
            // else if (input1 == questions[5] || input1 == questions[6]) ...[
            //   Padding(
            //     padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            //     child: Row(
            //       mainAxisSize: MainAxisSize.max,
            //       children: [
            //         Expanded(
            //           flex: 1,
            //           child: Padding(
            //             padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            //             child: Container(
            //               width: MediaQuery.of(context).size.width,
            //               height: 49,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(11),
            //                 border: Border.all(
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Expanded(
            //                       child: FlutterFlowDropDown(
            //                         initialOption: dropDownValue1 ??= '1',
            //                         options: ['1', '2'].toList(),
            //                         onChanged: (val) =>
            //                             setState(() => dropDownValue1 = val),
            //                         textStyle: FlutterFlowTheme.of(context)
            //                             .bodyText1
            //                             .override(
            //                               fontFamily: 'Signika Negative',
            //                               color: Colors.black,
            //                             ),
            //                         hintText: 'Day',
            //                         icon: Icon(
            //                           Icons.arrow_drop_down,
            //                           color: Colors.black,
            //                           size: 25,
            //                         ),
            //                         fillColor: Colors.white,
            //                         elevation: 0,
            //                         borderColor: Colors.transparent,
            //                         borderWidth: 0,
            //                         borderRadius: 0,
            //                         hidesUnderline: true,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         Expanded(
            //           flex: 1,
            //           child: Padding(
            //             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            //             child: Container(
            //               width: MediaQuery.of(context).size.width,
            //               height: 49,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(11),
            //                 border: Border.all(
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               child: Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Expanded(
            //                       child: FlutterFlowDropDown(
            //                         initialOption: dropDownValue2 ??= 'Jan',
            //                         options: ['Jan', 'Feb'].toList(),
            //                         onChanged: (val) =>
            //                             setState(() => dropDownValue2 = val),
            //                         textStyle: FlutterFlowTheme.of(context)
            //                             .bodyText1
            //                             .override(
            //                               fontFamily: 'Signika Negative',
            //                               color: Colors.black,
            //                             ),
            //                         hintText: 'Month',
            //                         icon: Icon(
            //                           Icons.arrow_drop_down,
            //                           color: Colors.black,
            //                           size: 25,
            //                         ),
            //                         fillColor: Colors.white,
            //                         elevation: 0,
            //                         borderColor: Colors.transparent,
            //                         borderWidth: 0,
            //                         borderRadius: 0,
            //                         hidesUnderline: true,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         Expanded(
            //           flex: 1,
            //           child: Padding(
            //             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            //             child: Container(
            //               width: MediaQuery.of(context).size.width,
            //               height: 49,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(11),
            //                 border: Border.all(
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               child: Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Expanded(
            //                       child: FlutterFlowDropDown(
            //                         initialOption: dropDownValue3 ??= '1990',
            //                         options: ['1990', '1991'].toList(),
            //                         onChanged: (val) =>
            //                             setState(() => dropDownValue3 = val),
            //                         textStyle: FlutterFlowTheme.of(context)
            //                             .bodyText1
            //                             .override(
            //                               fontFamily: 'Signika Negative',
            //                               color: Colors.black,
            //                             ),
            //                         hintText: 'Year',
            //                         icon: Icon(
            //                           Icons.arrow_drop_down,
            //                           color: Colors.black,
            //                           size: 25,
            //                         ),
            //                         fillColor: Colors.white,
            //                         elevation: 0,
            //                         borderColor: Colors.transparent,
            //                         borderWidth: 0,
            //                         borderRadius: 0,
            //                         hidesUnderline: true,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),




                  
                
                
                
                
            //     child: Container(
            //       width: MediaQuery.of(context).size.width,
            //       height: 49,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(2),
            //         border: Border.all(
            //           color: Colors.black,
            //         ),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            //         child: Row(
            //           mainAxisSize: MainAxisSize.max,
            //           children: [
            //             TextFormField(
            //               //Editable
            //               enabled: _edit,
            //               focusNode: FocusNode(),
            //               enableInteractiveSelection: _edit,
            //               //Styling
            //               style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
            //               controller: TextEditingController(text: input2), //Reset if exit out of field
            //               decoration: InputDecoration(
            //                 hintText: 'Please enter your ${input1.toLowerCase()}',
            //               ),
            //               onSaved: (String? value) {
            //                 //save



            //               },
            //               validator: (String? value) {
            //                 if (value == null || value.isEmpty) {
            //                   return 'Please enter your ${input1.toLowerCase()}';
            //                 } else if (input1 == questions[0]){ //Full Name
            //                   RegExp regex = RegExp(r"^[a-zA-Z\-]$");
            //                   return (regex.hasMatch(value)) ? null : 'Please enter a valid ${input1.toLowerCase()}';
            //                 } else if (input1 == questions[1]){ // Email
            //                   RegExp regex = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
            //                   return (regex.hasMatch(value)) ? null : 'Please enter a valid ${input1.toLowerCase()}';
            //                 } else if (input1 == questions[3]){ // IC Number
            //                   RegExp regex = RegExp(r"^\d{6}-\d{2}-\d{4}$");
            //                   return (regex.hasMatch(value)) ? null : 'Please enter a valid ${input1.toLowerCase()}';
            //                 } else if (input1 == questions[4]){ // Phone Number
            //                   RegExp regex = RegExp(r"^(\+?6?01)[0-46-9]-*[0-9]{7,8}$");
            //                   return (regex.hasMatch(value)) ? null : 'Please enter a valid ${input1.toLowerCase()}';
            //                 }
            //                 return null;
            //               },
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ]