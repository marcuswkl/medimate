import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'ScheduleData.dart';

final List<String> questions = ['Before Breakfast','After Breakfast','Before Lunch','After Lunch','Before Dinner','After Dinner','Bedtime'];

// List<DateTime> dates () {
//   final List<String> tempList = records.keys.toList();
//   List<DateTime> storage = [];
//   for (String i in tempList){
//     storage.add(DateFormat("dd/MM/yyyy").parse(i));
//   }
//   return storage;
// }

// Schedule Class
class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);
  
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  // Convert List String to NextLine String
  String multipleString(value) {
    StringBuffer sb = StringBuffer();
    for (String meds in value) {
      (meds == value.last)
      ? sb.write(meds)
      : sb.write(meds + "\n");
    }
    return sb.toString();
  }

  @override
  void initState() {
    super.initState();
    _MedicationQuery (DateTime.now());
    }

  // Calendar
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  final DateTime _firstDay = DateTime.utc(2000, 1, 1);
  final DateTime _lastDay = DateTime.utc(2030, 31, 31);
  DateTime? _selectedDay;

  _MedicationQuery (day){
    String selectedDay = DateFormat("dd/MM/yyyy").format(day);
    return records.keys.toList().any((item) => item == selectedDay)
    ? records[selectedDay]!.values.toList()
    : [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text(
                'Medication Schedule',
                style: GoogleFonts.fredokaOne(fontSize: 28,fontWeight: FontWeight.normal,color: Colors.black)
              ),
              pinned: true,
              backgroundColor: Colors.white,
            ),
          ];
        },
        // Content
        body: Builder(
          builder: (BuildContext context) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding (
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: TableCalendar(
                  firstDay: _firstDay,
                  lastDay: _lastDay,
                  focusedDay: _focusedDay,
                  calendarFormat: _calendarFormat,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    }
                  },
                  onFormatChanged: (format) {
                    if (_calendarFormat != format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
                ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate ((BuildContext context, int index){
                    List answers = _MedicationQuery(_focusedDay);
                    return displayWidget(input1: questions[index], input2: answers[index]);
                  },
                  childCount: questions.length,
                )),
              ),
            ]
          );
          }
        )
      ),
    );
  }

  //Display Values
  Widget displayWidget({required String input1, required input2}) {  
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
          child: IntrinsicHeight(
          child: Row(    
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
              // Meals 
              Expanded(
                flex: 1,
                child: Padding (
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: Container(
                  constraints: const BoxConstraints(minHeight: 68),
                  decoration: BoxDecoration(
                    color: 
                      input1.contains('Breakfast')
                      ? const Color(0xFFFFCB77)
                      : input1.contains('Lunch')
                      ? const Color(0xFF00B4D8)
                      : const Color(0xFF023E8A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            input1,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.signikaNegative(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: 
                              input1.contains('Breakfast') || input1.contains('Lunch')
                              ? Colors.black
                              : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              ),

              // Meds
              Expanded(
                flex: 2,
                child: Container(
                  constraints: const BoxConstraints(minHeight: 68),
                  decoration: BoxDecoration(
                  color: 
                    input1.contains('Breakfast')
                    ? const Color(0xFFFFCB77)
                    : input1.contains('Lunch')
                    ? const Color(0xFF00B4D8)
                    : const Color(0xFF023E8A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        multipleString(input2),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.signikaNegative(
                          height: 1.5,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: 
                            input1.contains('Breakfast') || input1.contains('Lunch')
                            ? Colors.black
                            : Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
        )
      ]
    );
  }
}