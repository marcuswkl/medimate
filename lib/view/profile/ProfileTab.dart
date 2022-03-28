import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:country_pickers/country_pickers.dart';
import 'package:intl/intl.dart';
import 'globals.dart' as globals;


class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  //Password Hide/Show
  bool _hide = false;
  void _togglevisibility() {
    setState(() {
      _hide = !_hide;
    });
  }

  // Value Update
  TextEditingController _dob = TextEditingController(); //DateOfBirth
  String? _gender;
  @override
  void initState() {
    super.initState();
      _dob = TextEditingController (text: answers[5]); //DateOfBirth
      _gender = answers[6]; //Gender
  }

  // Input Values
  final List<String> questions = ['Full Name', 'Email', 'Password', 'IC Number', 'Phone Number', 'Date of Birth', 'Gender', 'Drug Allergies'];
  final List<String> answers = ['John Doe', 'example@gmail.com', 'QW12p_asq', '100291-20-2345', '+6012-2345876', '01/12/1984', 'Male', 'Penicillin'];

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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                child: Text(
                input1,
                style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:'signikaNegative'),
                ),
              ),
              if (input1 == questions[2])...[ // Information Button
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(
                  Icons.info_rounded,
                  ),
                onPressed: (){},
                tooltip: 'Password should contain: \n - At least one upper case character \n - At least one lower case character \n - At least one digit \n - At least one special character \n - At least 8 characters in length',
              )]
            ],
          ),
        ),

        //'Full Name', 'Email'
        if (input1 == questions[0] || input1 == questions[1]) ...[
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
                    // Editable
                    enabled: globals.isEditable,
                    focusNode: FocusNode(),
                    enableInteractiveSelection: globals.isEditable,
                    // Managing Input
                    keyboardType: TextInputType.text,
                    controller: TextEditingController(text: input2),
                    // Styling
                    style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
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
                      }
                      return null;
                    },
                  )),
                ],
              ),
            ),
          )),
        ]

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
                    // Editable
                    enabled: globals.isEditable,
                    focusNode: FocusNode(),
                    enableInteractiveSelection: globals.isEditable,
                    // Hide or Show
                    obscureText: !_hide,
                    // Managing Input
                    controller: TextEditingController(text: input2),
                    // Styling
                    style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Please enter your ${input1.toLowerCase()}',
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
                        ? Icons.visibility_off
                        : Icons.visibility
                      ),
                      onPressed: () {
                        _togglevisibility();
                      }
                    ),
                  ),
                ],
              ),
            ),
          ))
        ]

        //'IC Number', 'Phone Number'
        else if (input1 == questions[3] || input1 == questions[4]) ...[
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
                     // Editable
                    enabled: globals.isEditable,
                    focusNode: FocusNode(),
                    enableInteractiveSelection: globals.isEditable,
                    // Managing Input
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r"[0-9\+-]")),
                    ],
                    controller: TextEditingController(text: input2),
                    // Styling
                    style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
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
          )),
        ]

        // Date of Birth
        else if (input1 == questions[5]) ...[
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
                      // Editable
                      enabled: globals.isEditable,
                      focusNode: FocusNode(),
                      enableInteractiveSelection: globals.isEditable,
                      // Managing Input
                      controller: _dob,
                      // Styling
                      style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
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
                          _dob.text = DateFormat("dd/MM/yyyy").format(date);
                        }
                      },
                       onSaved: (String? value) {
                      //save

                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid ${input1.toLowerCase()}';
                        }
                        return null; 
                      }
                    )
                  )
                ],
              ),
            ),
          ))
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
                    if (globals.isEditable == false)...[
                      Text(
                        input2,
                        style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
                      ),
                    ]
                    else...[
                    Flexible(
                    child: DropdownButtonHideUnderline(
                      child:DropdownButton<String>(
                      isExpanded: true,
                      value: _gender,
                      // Styling
                      style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      onChanged: (String? newValue){
                        setState(() {
                          _gender = newValue!;
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
                    // Editable
                    enabled: globals.isEditable,
                    focusNode: FocusNode(),
                    enableInteractiveSelection: globals.isEditable,
                    // Managing Input
                    controller: TextEditingController(text: input2),
                    // Styling
                    style: const TextStyle(fontSize: 18,color: Colors.black,fontFamily:'signikaNegative'),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter in any Allergies that you have',
                    ),
                    onSaved: (String? value) {
                      //save

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