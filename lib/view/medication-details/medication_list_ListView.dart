import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'medication_information_profile.dart';
import 'MedicationData.dart';


class MedicationListView extends StatefulWidget {
  const MedicationListView({Key? key}) : super(key: key);

  @override
  _MedicationListViewState createState() => _MedicationListViewState();
}

class _MedicationListViewState extends State<MedicationListView> { 
  String? medNickName, medName, medPic, adheranceRate, supplyRate, completionRate;

  _medicationQuery(index) {
    List medDetails = medications.values.elementAt(index);
    return {
      medNickName = medDetails[0],
      medName = medDetails[1],
      medPic = medDetails[2],
      adheranceRate = medDetails[3],
      supplyRate = medDetails[4],
      completionRate = medDetails[5],
    };
  }
  
  @override
  Widget build(BuildContext context) {
    // If no medications
    if (medications.isEmpty){
      return Center(
          child: Text(
            'Nothing to display',
            style: GoogleFonts.signikaNegative(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,),
          )
      );
    }

    // If got medications
    else{
      return ListView.separated(
        primary: false,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                                            medNickName!,// 'Coughing Medicine',
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
                                              medName!,// 'Benzonatate',
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
                                              onPressed: (){},
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
                                                MaterialPageRoute(builder: (context) => const MedicationInformationProfileWidget()));
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