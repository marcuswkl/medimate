import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'medication_search_result.dart';
import 'how_to_swallow.dart';

class MedicationResultWidget extends StatefulWidget {
  const MedicationResultWidget({Key? key}) : super(key: key);

  @override
  _MedicationResultWidgetState createState() => _MedicationResultWidgetState();
}

class _MedicationResultWidgetState extends State<MedicationResultWidget> {
  String dropDownValue1 = "White";
  String dropDownValue2 = "Round";
  late TextEditingController searchFieldController2;
  late TextEditingController searchFieldController1;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchFieldController1 = TextEditingController(text: '');
    searchFieldController2 = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 30, 0, 0),
                    child: Text(
                      'Medication Search',
                      style: GoogleFonts.fredokaOne(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Search by Medication Name',
                              style: GoogleFonts.signikaNegative(
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 5, 0, 0),
                              child: TextFormField(
                                controller: searchFieldController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: ' Medication Name',
                                  labelStyle: GoogleFonts.signikaNegative(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                  hintText: 'Input',
                                  hintStyle: GoogleFonts.signikaNegative(
                                    color: const Color(0xff393939),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFFEDF1FB),
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                  prefixIcon: const Icon(
                                    Icons.search_sharp,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.highlight_off,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                          child: Text(
                            'OR',
                            style: GoogleFonts.signikaNegative(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Search by Pill Characteristic',
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 5, 0, 0),
                                child: TextFormField(
                                  controller: searchFieldController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Pill Imprint',
                                    labelStyle: GoogleFonts.signikaNegative(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                    hintText: 'Input',
                                    hintStyle: GoogleFonts.signikaNegative(
                                      color: const Color(0xff393939),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFEDF1FB),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                    prefixIcon: const Icon(
                                      Icons.search_sharp,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    suffixIcon: const Icon(
                                      Icons.highlight_off,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                  style: GoogleFonts.signikaNegative(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 100,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        maxHeight: 35,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFEDF1FB),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(15, 0, 10, 0),
                                        child: DropdownButton<String>(
                                            value: dropDownValue1,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            items: <String>[
                                              'White',
                                              'Yellow',
                                              'Red',
                                              'Blue',
                                              'Green'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (String? val) {
                                              setState(() {
                                                dropDownValue1 = val!;
                                              });
                                            },
                                            // height: 35,
                                            style: GoogleFonts.signikaNegative(
                                              color: Colors.black,
                                            ),
                                            hint: const Text('Any Color'),
                                            dropdownColor:
                                                const Color(0xFFEDF1FB),
                                            focusColor: Colors.red,
                                            isExpanded: true,
                                            //margin: EdgeInsetsDirectional.fromSTEB(12,4,12,4),
                                            elevation: 2,
                                            underline: Container(
                                              color: const Color(0xFFEDF1FB),
                                            )
                                            // hidesUnderline: true,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 100,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.6,
                                        maxHeight: 35,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFEDF1FB),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(15, 0, 10, 0),
                                        child: DropdownButton<String>(
                                            value: dropDownValue2,
                                            icon: const Icon(
                                                Icons.keyboard_arrow_down),
                                            items: <String>[
                                              'Round',
                                              'Oval',
                                              'Triangle',
                                              'Square',
                                              'Diamond'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (String? val) {
                                              setState(() {
                                                dropDownValue2 = val!;
                                              });
                                            },
                                            // height: 35,
                                            style: GoogleFonts.signikaNegative(
                                              color: Colors.black,
                                            ),
                                            hint: const Text('Any Color'),
                                            dropdownColor:
                                                const Color(0xFFEDF1FB),
                                            focusColor: Colors.red,
                                            isExpanded: true,
                                            //margin: EdgeInsetsDirectional.fromSTEB(12,4,12,4),
                                            elevation: 2,
                                            underline: Container(
                                              color: const Color(0xFFEDF1FB),
                                            )
                                            // hidesUnderline: true,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1, 0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: const Color(0xFF809BCE),
                                              minimumSize: const Size(107, 34),
                                              elevation: 3,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              )),
                                          onPressed: () {
                                            Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => const MedicationSearchResultWidget()));
                                          },
                                          child: Text(
                                            'Search',
                                            style: GoogleFonts.signikaNegative(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.31,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20, 5, 20, 0),
                                    child: DefaultTabController(
                                      length: 2,
                                      initialIndex: 0,
                                      child: Column(
                                        children: [
                                          TabBar(
                                            labelColor: Colors.black,
                                            unselectedLabelColor: Colors.grey,
                                            labelStyle:
                                                GoogleFonts.signikaNegative(
                                              fontSize: 14,
                                            ),
                                            indicatorColor:
                                                const Color(0xFF809BCE),
                                            indicatorWeight: 3,
                                            tabs: const [
                                              Tab(
                                                text: 'Currently Taking',
                                              ),
                                              Tab(
                                                text: 'Non-active',
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: TabBarView(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                          10, 0, 10, 0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  0, 10, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 48,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF809BCE),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              5,
                                                                              0,
                                                                              5),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(11),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/870/600',
                                                                              width: 40,
                                                                              height: 40,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 6,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Statins Atorvastatin',
                                                                            style:
                                                                                GoogleFonts.signikaNegative(
                                                                              color: Colors.white,
                                                                              fontSize: 16,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 3,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              30,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              IconButton(
                                                                            iconSize:
                                                                                60,
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.keyboard_arrow_right,
                                                                              color: Colors.white,
                                                                              size: 30,
                                                                              //borderRadius: 30,
                                                                              // buttonSize: 60,
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              print('IconButton pressed ...');
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 48,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF809BCE),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              5,
                                                                              0,
                                                                              5),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(11),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/870/600',
                                                                              width: 40,
                                                                              height: 40,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 6,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Cod Liver Oil',
                                                                            style:
                                                                                GoogleFonts.signikaNegative(
                                                                              color: Colors.white,
                                                                              fontSize: 16,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 3,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              30,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              IconButton(
                                                                            iconSize:
                                                                                60,
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.keyboard_arrow_right,
                                                                              color: Colors.white,
                                                                              size: 30,
                                                                              //borderRadius: 30,
                                                                              // buttonSize: 60,
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              print('IconButton pressed ...');
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 48,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF809BCE),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              5,
                                                                              0,
                                                                              5),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(11),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/870/600',
                                                                              width: 40,
                                                                              height: 40,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 6,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Normaten',
                                                                            style:
                                                                                GoogleFonts.signikaNegative(
                                                                              color: Colors.white,
                                                                              fontSize: 16,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 3,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              30,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              IconButton(
                                                                            iconSize:
                                                                                60,
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.keyboard_arrow_right,
                                                                              color: Colors.white,
                                                                              size: 30,
                                                                              //borderRadius: 30,
                                                                              // buttonSize: 60,
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              print('IconButton pressed ...');
                                                                            },
                                                                          ),
                                                                        ),
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
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                          10, 0, 10, 0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                  0, 10, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                            .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 48,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF809BCE),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              5,
                                                                              0,
                                                                              5),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(11),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/870/600',
                                                                              width: 40,
                                                                              height: 40,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 6,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Panadol',
                                                                            style:
                                                                                GoogleFonts.signikaNegative(
                                                                              color: Colors.white,
                                                                              fontSize: 16,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 3,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              30,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              IconButton(
                                                                            iconSize:
                                                                                60,
                                                                            icon:
                                                                                const Icon(
                                                                              Icons.keyboard_arrow_right,
                                                                              color: Colors.white,
                                                                              size: 30,
                                                                              //borderRadius: 30,
                                                                              // buttonSize: 60,
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              print('IconButton pressed ...');
                                                                            },
                                                                          ),
                                                                        ),
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
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 50,
                              icon: const FaIcon(
                                FontAwesomeIcons.solidQuestionCircle,
                                color: Color(0xFF809BCE),
                                size: 30,
                                //borderRadius: 30,
                                // buttonSize: 50,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const HowToSwallowWidget()));
                              },
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 20, 0),
                              child: Text(
                                'Have difficulty in swallowing pills?',
                                style: GoogleFonts.signikaNegative(
                                  color: Colors.black,
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
          ),
        ),
      ),
    );
  }
}
