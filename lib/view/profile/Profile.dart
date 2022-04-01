import 'package:tuple/tuple.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SliverAppBarDelegate.dart';
import 'ProfileTab.dart';
import 'SettingsTab.dart';

final isEditable = ValueNotifier<bool>(false);


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin{
  //TabController
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: _tab.length, vsync: this);
    _tabController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _tabController.dispose();
      super.dispose();
  }
  
  //TabBarList
  final List<Tuple3> _tab = [
    const Tuple3('Profile', ProfileTab(), Icon(Icons.person)),
    const Tuple3('Settings', SettingsTab(), Icon(Icons.access_time_sharp)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text(
                  _tab[_tabController.index].item1,
                  style: GoogleFonts.fredokaOne(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black)
                ),
                automaticallyImplyLeading: false,
                actions: [
                  ValueListenableBuilder(
                  valueListenable: isEditable,
                  builder: (context, value, widget) {
                  return IconButton(
                    icon: Icon(
                      isEditable.value 
                      ? Icons.close
                      : Icons.edit
                    ),
                    tooltip: 
                      isEditable.value 
                      ? 'Leave'
                      : 'Make Changes (Edit)',
                    color: Colors.black,
                    onPressed: (){
                      isEditable.value 
                      ? setState(() {})
                      : setState(() {isEditable.value = true;});
                    }
                  );
                  })
                ],
                pinned: false,
                backgroundColor: Colors.white,
                expandedHeight: 100.0,
                // flexibleSpace: FlexibleSpaceBar(
                //   title:
                //   background: (//Image, stretchModes: [StretchMode.zoomBackground],)
                // ),
                // forceElevated: innerBoxIsScrolled,
              ),
              SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverPersistentHeader(
                  delegate: SliverAppBarDelegate(
                    tabBar: TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      labelStyle: GoogleFonts.signikaNegative(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                      controller: _tabController,
                      tabs: _tab
                        .map<Tab>((Tuple3 page) => Tab(
                          text: page.item1,
                          icon: page.item3,
                        )).toList(),
                    ),
                  ),
                  pinned: true,
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: 
              _tab.map<Widget>((Tuple3 page) => page.item2).toList(),
          ),
        ),
    );
  }
}