import 'package:flutter/material.dart';
import 'view/search/how_to_swallow.dart';
import 'view/search/medication_search.dart';
import 'view/search/medication_search_result.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const MedicationResultWidget(),
    const MedicationSearchResultWidget(),
    const HowToSwallowWidget(),
    const MedicationResultWidget(),
    const MedicationSearchResultWidget(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xFF809BCE),
          primaryColor: Colors.white),
       child: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFE8E8FF),
        // backgroundColor: const Color(0xFF809BCE),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.medication,
            ),
            label: 'Medication',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.schedule,
            ),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
      ),
    );
  }
}
