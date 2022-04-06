import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'medication_list_ListView.dart';
import 'journal_history.dart';
import 'add_medication_1.dart';


class MedicationList extends StatefulWidget {
  const MedicationList({Key? key}) : super(key: key);

  @override
  _MedicationListState createState() => _MedicationListState();
}

class _MedicationListState extends State<MedicationList> with WidgetsBindingObserver {
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Medication List',
                    style: GoogleFonts.fredokaOne(color: Colors.black,fontSize: 28,fontWeight: FontWeight.normal,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: ValueListenableBuilder(
                valueListenable: viewVisible,
                builder: (context, value, widget) {
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Text(
                          'Active Meds',
                          style: GoogleFonts.signikaNegative(color: Colors.black,fontWeight: FontWeight.w300,),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: IconButton(
                            iconSize: 50,
                            color: Colors.black,
                            icon:
                              viewVisible.value == true
                              ? const Icon(Icons.delete, 
                                      color: Colors.black,
                                      size: 30,
                                )
                              : const Icon(null),
                            onPressed: () {
                              if (toDelete.value.contains(true)){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: const Text('Delete Record'),
                                    content: const Text('Are you sure you want to delete the record selected?'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                          setState(() {
                                            var removeList = [];
                                            // Check for Delete Records and label them
                                            for (var i = 0; i < meds.value.length; i++){
                                              if (toDelete.value[i] == true){
                                                removeList.add(meds.value.keys.elementAt(i));
                                              }
                                            }
                                            // Remove records in meds
                                            for (var i in removeList){
                                              meds.value.remove(i);
                                            }
                                            toDelete.value.removeWhere((element) => element == true);
                                            viewVisible.value = false;
                                          });
                                        },
                                        child: const Text('YES'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          setState(() { 
                                            viewVisible.value = false;
                                            toDelete.value = List<bool>.generate(toDelete.value.length, (i) => false);
                                          });
                                        },
                                        child: const Text('NO'),
                                      ),
                                    ],
                                  )
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                }
              ),
            ),
            const MedicationListView(),
            // Button Pannel
            if (meds.value.isNotEmpty)...[
            ValueListenableBuilder(
              valueListenable: viewVisible,
              builder: (context, value, widget){
              return Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 80, 10, 0),
                  child: (viewVisible.value == true)
                  ? Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF809BCE),
                              elevation: 3,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                              )
                            ),
                            onPressed: (){
                              setState(() {
                                viewVisible.value = false;
                                toDelete.value = List<bool>.generate(toDelete.value.length, (i) => false);
                              });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.close,size: 18),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: Text(
                                    'CANCEL',
                                    style: GoogleFonts.signikaNegative(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500,),
                                  )
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]
                    )
                  : Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      //History Button
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF809BCE),
                            minimumSize: const Size(125,40),
                            elevation: 3,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            )
                          ),
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const JournalHistoryWidget()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.history,size: 18),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'HISTORY',
                                  style: GoogleFonts.signikaNegative(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500,),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(flex: 3),
                      //Edit Button
                      Padding(
                        padding: const EdgeInsets.only(right : 10),
                        child: Expanded(
                          flex: 1,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFF809BCE),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: IconButton(
                              iconSize: 40,
                              color: const Color(0x00FCFCFC),
                              icon: const Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                              onPressed: () {
                                //Edit Records
                              },
                            ),
                          ),
                        ),
                      ),
                      //Add Button
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFF809BCE),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            iconSize: 40,
                            color: const Color(0x00FCFCFC),
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const AddMedication1()));
                            },
                          ),
                        ),
                      ),
                    ]
                  )
                )
              );
            })]
          ]
        ),
      )
    );
  }
}