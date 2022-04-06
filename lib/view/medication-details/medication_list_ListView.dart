import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'medication_information_profile.dart';
import 'MedicationData.dart';
import 'add_medication_1.dart';
import 'nearby_pharmacy.dart';

final viewVisible = ValueNotifier<bool>(false);
final meds = ValueNotifier<Map>(medications);
final toDelete = ValueNotifier<List>(List<bool>.generate(medications.length, (i) => false));

class MedicationListView extends StatefulWidget {
  const MedicationListView({Key? key}) : super(key: key);

  @override
  _MedicationListViewState createState() => _MedicationListViewState();
}

class _MedicationListViewState extends State<MedicationListView> {
  String? medNickName,
      medName,
      medPic,
      adheranceRate,
      supplyRate,
      completionRate;
  final List<bool> _tileExpand = [];

  _medicationQuery(index) {
    Map medDetails = meds.value.values.elementAt(index);
    return {
      medNickName = medDetails['MedNickName'],
      medName = medDetails['MedName'],
      medPic = medDetails['MedPic'],
      adheranceRate = medDetails['AdheranceRate'],
      supplyRate = medDetails['SupplyRate'],
      completionRate = medDetails['CompletionRate'],
    };
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: viewVisible,
      builder: (context, value, widget) {

    // If no medications
    if (meds.value.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 214,
                    height: 324,
                    decoration: BoxDecoration(
                      color: const Color(0x4D95B8D1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 10, 0, 0),
                            child: Image.asset(
                              'assets/images/doctor.png',
                              width: 100,
                              height: 158,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 15, 0, 0),
                            child: Text(
                              'No Meds Found!',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 10, 0, 0),
                            child: Text(
                              'OOPS! Looks like your medication list is empty.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF809BCE),
                          minimumSize: const Size(175, 40),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddMedication1()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.add,
                            size: 16,
                          ),
                          Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Text(
                                'ADD MEDICATION',
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // If got medications
    else {
      return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
              itemCount: meds.value.length,
              itemBuilder: (context, index) {
                _medicationQuery(index);
                _tileExpand.add(false);
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: viewVisible.value,
                      child: Expanded(
                        flex: 1,
                        child: Checkbox(
                          value: toDelete.value[index],
                          onChanged: (bool? newValue) {
                            setState(() {
                              toDelete.value[index] = newValue;
                            });
                          }, 
                          activeColor: const Color(0xFF809BCE),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Material(
                        child: InkWell(
                          onLongPress: () {
                            setState(() {
                              viewVisible.value = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFF79747E),
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 1),
                                  blurRadius: 5,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              ],
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Center(child: ExpansionTile(
                                  leading: Image.asset(
                                    medPic!,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    medName!,
                                    style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    medNickName!,
                                    style: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailing: Icon(
                                    _tileExpand[index] == false
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                  ),
                                  onExpansionChanged: (bool expanded) {
                                    setState(() => _tileExpand[index] = expanded);
                                  },
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          
                                          Expanded(
                                            flex: 5,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  //Adherance Rate
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Adherance Rate',
                                                        textAlign: TextAlign.start,
                                                        style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                                        child: Text(
                                                          adheranceRate!,
                                                          textAlign: TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(color: Colors.black,fontWeight: FontWeight.normal,),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                                        child: LinearPercentIndicator(
                                                          percent: double.parse(adheranceRate!.replaceAll(RegExp('%'), '')) /100,
                                                          padding: const EdgeInsets.only(left: 0),
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor:const Color(0xFF809BCE),
                                                          backgroundColor:const Color(0xFFF1F4F8),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 25),
                                                  //Supply Rate
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Supply Rate',
                                                        textAlign: TextAlign.start,
                                                        style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                                        child: Text(
                                                          supplyRate!,
                                                          textAlign: TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(color: Colors.black,fontWeight: FontWeight.normal,),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                                        child: LinearPercentIndicator(
                                                          percent: double.parse(supplyRate!.replaceAll(RegExp('%'), '')) /100,
                                                          padding: const EdgeInsets.only(left: 0),
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor: const Color(0xFF809BCE),
                                                          backgroundColor: const Color(0xFFF1F4F8),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 5,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 9),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  //completion Rate
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Completion Rate',
                                                        textAlign: TextAlign.start,
                                                        style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                                        child: Text(
                                                          completionRate!,
                                                          textAlign: TextAlign.start,
                                                          style: GoogleFonts.signikaNegative(color: Colors.black,fontWeight: FontWeight.normal,),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                                                        child: LinearPercentIndicator(
                                                          percent: double.parse(completionRate!.replaceAll(RegExp('%'), '')) /100,
                                                          padding: const EdgeInsets.only(left: 0),
                                                          lineHeight: 5,
                                                          animation: true,
                                                          progressColor:const Color(0xFF809BCE),
                                                          backgroundColor:const Color(0xFFF1F4F8),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  // Space Between
                                                  const SizedBox(height: 30),
                                                  // Buttons
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                          child: ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                              primary:const Color(0xFF809BCE),
                                                              minimumSize: const Size(80, 30),
                                                              elevation: 5,
                                                              shape: const RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                                              ),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(context,
                                                              MaterialPageRoute(builder: (context) => const NearbyPharmacyWidget()));
                                                            },
                                                            child: Center(
                                                              child: Text(
                                                                'RESTOCK',
                                                                overflow: TextOverflow.ellipsis,
                                                                style: GoogleFonts.signikaNegative(color: Colors.white,fontSize: 12,fontWeight:FontWeight.w500),
                                                              )
                                                            ),
                                                          )
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                            primary:const Color(0xFF809BCE),
                                                            minimumSize: const Size(65, 30),
                                                            elevation: 5,
                                                            shape: const RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                                            ),
                                                          ),
                                                          onPressed: () {
                                                            Navigator.push(context,
                                                            MaterialPageRoute(builder: (context) => MedicationInformationProfileWidget(index: index)));
                                                          },
                                                          child: Center(
                                                            child: Text(
                                                              'INFO',
                                                              overflow: TextOverflow.ellipsis,
                                                              style: GoogleFonts.signikaNegative(color: Colors.white,fontSize: 12,fontWeight:FontWeight.w500),
                                                            )
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
                                    ),
                                ]
                              ),
                            ),
                          ),
                        )
                      )
                    )
                  )]
                );
              }            
            ),
          ]
      );
    }
  });
}}