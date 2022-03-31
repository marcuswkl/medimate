import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:country_pickers/country_pickers.dart';
import 'package:intl/intl.dart';
import 'InputValidation.dart';
import 'Profile.dart';
import 'SubmitButton.dart';


// Input Values
Map<String, String> input = {
  'Full Name' : 'John Doe',
  'Email' : 'example@gmail.com',
  'Password' : 'QW12p_asq',
  'IC Number' : '100291-20-2345',
  'Phone Number' : '+6012-2345876',
  'Date of Birth' : '01/12/1984',
  'Gender' : 'Male',
  'Drug Allergies' : 'Penicillin'
};
final List<String> questions = input.keys.toList();
final List<String> answers = input.values.toList();


// Profile Tab
class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with InputValidationMixin { 
  //Password Hide/Show
  bool _hide = false;
  void _togglevisibility() {
    setState(() {
      _hide = !_hide;
    });
  }

  //Form Input
  final profileformKey = GlobalKey < FormState > ();
  List<TextEditingController> myController = List.generate(questions.length, (i) => TextEditingController());
  @override
  void initState() {
    super.initState();
    for (int i=0; i<questions.length; i++){
      myController[i] = TextEditingController (text: answers[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isEditable,
      builder: (context, value, widget) {
    return Form(
      key: profileformKey,
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
                    return cardWidget(input1: questions[index], input2: answers[index], editable: value);
                  },
                  childCount: questions.length,
                ))
              ),
              if (value == true)...[
                SliverToBoxAdapter(
                  child: SubButton(FormKey: profileformKey),
                )
              ]
            ],
          );
        }
      )));
    });
  }
  
  // //Submit Button
  // Widget subButton() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       ElevatedButton (
  //         onPressed: () {
  //           if (formGlobalKey.currentState!.validate()) {
  //             formGlobalKey.currentState?.save();
  //             ScaffoldMessenger.of(context).showSnackBar(
  //               const SnackBar(content: Text('Saving...')),
  //             );  
  //             setState(() {isEditable.value = false;});
  //           }
  //         },
  //         style: ButtonStyle(
  //           elevation: MaterialStateProperty.all(0),
  //           backgroundColor: MaterialStateProperty.all(Colors.transparent),
  //         ),
  //         child: Container(
  //           width: MediaQuery.of(context).size.width * 0.8,
  //           height: 40,
  //           decoration: BoxDecoration(
  //             color: const Color(0xFF809BCE),
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           child: Row(
  //             mainAxisSize: MainAxisSize.max,
  //             children: [
  //               Expanded(
  //                 child: Stack(
  //                   children: [
  //                     Row(
  //                       mainAxisSize: MainAxisSize.max,
  //                       children: [
  //                         Expanded(
  //                           child: Text(
  //                             'SAVE CHANGES',
  //                             textAlign: TextAlign.center,
  //                             style: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
  //                       child: Row(
  //                         mainAxisSize: MainAxisSize.max,
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         children: const [
  //                           Icon(
  //                             Icons.check_rounded,
  //                             color: Colors.white,
  //                             size: 24,
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         )
  //       )
  //     ]
  //   );
  // }

  //Display Values
  Widget cardWidget({required String input1, required input2, required editable}) {  
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                child: Text(
                input1,
                style: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                ),
              ),
              // if (input1 == questions[2])...[ // Information Button
              // IconButton(
              //   padding: EdgeInsets.zero,
              //   constraints: const BoxConstraints(),
              //   icon: const Icon(
              //     Icons.info_rounded,
              //     ),
              //   onPressed: (){},
              //   tooltip: 'Password should contain: \n - At least one upper case character \n - At least one lower case character \n - At least one digit \n - At least one special character \n - At least 8 characters in length',
              // )]
            ],
          ),
        ),

        //'Full Name'
        if (input1 == questions[0]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Stack(
            children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                child: TextFormField(
                  enabled: editable,
                  focusNode: FocusNode(),
                  enableInteractiveSelection: editable,
                  keyboardType: TextInputType.text,
                  controller: myController[0],
                  style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Please enter your ${input1.toLowerCase()}',
                  ),
                  onSaved: (String? value) {
                    //save
                    print("saved");
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your ${input1.toLowerCase()}';
                    } else {
                      if (isName(value)) {
                        return null;
                      } else {
                        return 'Please enter a valid ${input1.toLowerCase()}';
                      }
                    }
                  }
                )),
              ],
            )),
          ]))
        ]

        //'Email'
        else if (input1 == questions[1]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Stack(
            children:[ 
          Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                child: TextFormField(
                  enabled: editable,
                  focusNode: FocusNode(),
                  enableInteractiveSelection: editable,
                  keyboardType: TextInputType.text,
                  controller: myController[1],
                  style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Please enter your ${input1.toLowerCase()}',
                  ),
                  onSaved: (String? value) {
                    //save
                    print("saved");
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your ${input1.toLowerCase()}';
                    } else {
                      if (isEmail(value)) {
                        return null;
                      } else {
                        return 'Please enter a valid ${input1.toLowerCase()}';
                      }
                    }
                  }
                )),
              ],
            )),
          ]))
        ]

        // 'Password'
        else if (input1 == questions[2]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Stack(
            children:[ 
          Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: Colors.black,
              ),
            )),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 7,
                    child: TextFormField(
                    enabled: editable,
                    focusNode: FocusNode(),
                    enableInteractiveSelection: editable,
                    obscureText: !_hide,
                    controller: myController[2],
                    style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Please enter your ${input1.toLowerCase()}',
                    ),
                    onSaved: (String? value) {
                      //save
                      print("saved");
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your ${input1.toLowerCase()}';
                      } else {
                        if (isPassword(value)) {
                          return null;
                        } else {
                          return 'Please enter a valid ${input1.toLowerCase()}';
                        }
                      }
                    }
                )),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    icon: Icon (
                      _hide 
                      ? Icons.visibility_off
                      : Icons.visibility
                    ),
                    onPressed: () {
                      _togglevisibility();
                    }
                  )),
                ],
              )),
            ]))
          ]

        //'IC Number'
        else if (input1 == questions[3]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Stack(
            children:[ 
          Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: Colors.black,
              ),
            )
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                child: TextFormField(
                  enabled: editable,
                  focusNode: FocusNode(),
                  enableInteractiveSelection: editable,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9\+-]")),
                  ],
                  controller: myController[3],
                  style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Please enter your ${input1.toLowerCase()}',
                  ),
                  onSaved: (String? value) {
                    //save
                    print("saved");
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your ${input1.toLowerCase()}';
                    } else {
                      if (isIC(value)) {
                        return null;
                      } else {
                        return 'Please enter a valid ${input1.toLowerCase()}';
                      }
                    }
                  }
                )),
              ],
            )),
          ]))
        ]

        //'Phone Number'
        else if (input1 == questions[4]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Stack(
            children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                child: TextFormField(
                  enabled: editable,
                  focusNode: FocusNode(),
                  enableInteractiveSelection: editable,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9\+-]")),
                  ],
                  controller: myController[4],
                  style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Please enter your ${input1.toLowerCase()}',
                  ),
                  onSaved: (String? value) {
                    //save
                    print("saved");
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your ${input1.toLowerCase()}';
                    } else {
                      if (isPhone(value)) {
                        return null;
                      } else {
                        return 'Please enter a valid ${input1.toLowerCase()}';
                      }
                    }
                  }
                )),
              ],
            )),
          ]))
        ]

        // Date of Birth
        else if (input1 == questions[5]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Stack(
          children:[ 
            Container(
              width: MediaQuery.of(context).size.width,
              height: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: Colors.black,
                ),
              )
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: TextFormField(
                      enabled: editable,
                      focusNode: FocusNode(),
                      enableInteractiveSelection: editable,
                      controller: myController[5],
                      style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Please enter your ${input1.toLowerCase()}',
                        border: InputBorder.none,
                      ),
                      onTap: () async{
                        FocusScope.of(context).requestFocus(FocusNode());
                        var date = await showDatePicker(
                          context: context, 
                          initialDate:DateFormat("dd/MM/yyyy").parse(input2),
                          firstDate:DateTime(1900),
                          lastDate: DateTime.now()
                        );
                        if (date != null){
                          myController[5].text = DateFormat("dd/MM/yyyy").format(date);
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
                      }
                    )),
                  ],
                )
              ),
            ])
          )
        ]

        // Gender
        else if (input1 == questions[6]) ...[
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
                  // Flexible(
                    if (editable == false)...[
                      Text(
                        myController[6].text,
                        style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                      ),
                    ]
                    else...[
                    Flexible(
                    child: DropdownButtonHideUnderline(
                      child:DropdownButton<String>(
                      isExpanded: true,
                      value: myController[6].text,
                      style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      onChanged: (String? newValue){
                        setState(() {
                           myController[6].text = newValue!;
                        });
                      },
                      items: <String>['Male','Female']
                        .map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                    )))
                  ]
                ],
              ),
            ),
          ))
        ]

        // Drug Allergies
        else if (input1 == questions[7]) ...[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 229,
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
                    enabled: editable,
                    focusNode: FocusNode(),
                    enableInteractiveSelection: editable,
                    controller:  myController[7],
                    style: GoogleFonts.signikaNegative(fontSize: 18,color: Colors.black),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter in any Allergies that you have',
                    ),
                    onSaved: (String? value) {
                      //save
                      print("saved");
                    },
                  )),
                ],
              ),
            ),
          ))
        ]
      ]
    );
  }
}