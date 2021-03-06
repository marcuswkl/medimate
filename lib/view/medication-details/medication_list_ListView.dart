import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'medication_information_profile.dart';
import 'MedicationData.dart';
import 'add_medication_1.dart';
import 'nearby_pharmacy.dart';


class MedicationListView extends StatefulWidget {
  const MedicationListView({Key? key}) : super(key: key);

  @override
  _MedicationListViewState createState() => _MedicationListViewState();
}

class _MedicationListViewState extends State<MedicationListView> { 
  String? medNickName, medName, medPic, adheranceRate, supplyRate, completionRate;
  
  _medicationQuery(index) {
    Map medDetails = medications.values.elementAt(index);
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
    // If no medications
    if (medications.isEmpty){
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
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Image.asset(
                              'assets/images/doctor.png',
                              width: 100,
                              height: 158,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
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
                            padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                          minimumSize: const Size(175,40),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )
                      ),
                      onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const AddMedication1()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.add,
                            size: 16,
                          ),
                          Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'ADD MEDICATION',
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                          ),
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
    else{
      return ListView.separated(
        primary: false,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
        itemCount: medications.length,
        itemBuilder: (context, index) {
        _medicationQuery(index);
        return Material(
          color: Colors.transparent,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFF79747E),
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: ExpandableNotifier(
                        initialExpanded: false,
                        child: ExpandablePanel(
                          header: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(medPic!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize:MainAxisSize.max,
                                        children: [
                                          Text(
                                            medName!,// 'Coughing Medicine',
                                            style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                        child: Row(
                                          mainAxisSize:MainAxisSize.max,
                                          mainAxisAlignment:MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              medNickName!,// 'Benzonatate',
                                              style: GoogleFonts.signikaNegative(color: Colors.black,fontWeight: FontWeight.w500,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          collapsed: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(70, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'More details',
                                  style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w300,fontStyle: FontStyle.italic,),
                                ),
                              ],
                            ),
                          ),
                          expanded: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    mainAxisSize:MainAxisSize.max,
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                                        child: Text(
                                          'Adherance Rate',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600,),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                        child: Text(
                                          adheranceRate!, // '100%',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.signikaNegative(color: Colors.black,fontWeight: FontWeight.normal,),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                        child: LinearPercentIndicator(
                                          percent: double.parse(adheranceRate!.replaceAll(RegExp('%'),''))/100,
                                          width: 130,
                                          lineHeight: 5,
                                          animation: true,
                                          progressColor:const Color(0xFF809BCE),
                                          backgroundColor:const Color(0xFFF1F4F8),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 25,0, 0),
                                        child: Text(
                                          'Supply Rate',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                        child: Text(
                                          supplyRate!, // '20%',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.signikaNegative(color: Colors.black, fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                        child: LinearPercentIndicator(
                                          percent: double.parse(supplyRate!.replaceAll(RegExp('%'),''))/100,
                                          width: 130,
                                          lineHeight: 5,
                                          animation: true,
                                          progressColor: const Color(0xFF809BCE),
                                          backgroundColor: const Color(0xFFD3D6E7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                                        child: Text(
                                          'Completion Rate',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.signikaNegative(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600,),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(9, 3, 0, 0),
                                        child: Text(
                                          completionRate!, // ''50%',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.signikaNegative(color: Colors.black, fontWeight: FontWeight.normal,),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 1, 0),
                                        child: LinearPercentIndicator(
                                          percent: double.parse(completionRate!.replaceAll(RegExp('%'),''))/100,
                                          width: 130,
                                          lineHeight: 5,
                                          animation: true,
                                          progressColor: const Color(0xFF809BCE),
                                          backgroundColor: const Color(0xFFD3D6E7),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize:MainAxisSize.max,
                                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0,30,5,0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: const Color(0xFF809BCE),
                                                minimumSize: const Size(80,30),
                                                elevation: 5,
                                                shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                                ),
                                              ),
                                              onPressed: (){
                                                Navigator.push(context,
                                                MaterialPageRoute(builder: (context) => const NearbyPharmacyWidget()));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                    child: Text(
                                                      'RESTOCK',
                                                      style: GoogleFonts.signikaNegative(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),
                                                    )
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0,30,0,0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: const Color(0xFF809BCE),
                                                minimumSize: const Size(65,30),
                                                elevation: 5,
                                                shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                                )
                                              ),
                                              onPressed: (){
                                                Navigator.push(context, 
                                                MaterialPageRoute(builder: (context) => MedicationInformationProfileWidget(index: index)));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                    child: Text(
                                                      'INFO',
                                                      style: GoogleFonts.signikaNegative(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),
                                                    )
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          theme: const ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                            expandIcon: Icons.keyboard_arrow_down,
                            collapseIcon: Icons.keyboard_arrow_up,
                            iconPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        );
      });
    }
  }
}