import 'package:tuple/tuple.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SliverAppBarDelegate.dart';
import 'ProfileTab.dart';
import 'SettingsTab.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  // static bool? _isEditable;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin{
  
  // //Editable
  // ValueChanged<bool> onChange;
  // bool _isEditable = false;
  // @override
  // void initState() {
  //   super.initState();
  //   onChange = (value) {
  //     setState(() {
  //       _isEditable = value;
  //     });
  //   };
  // }

  //TabController
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tab.length, vsync: this);
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
    //   body: SafeArea(
    //     child: GestureDetector(
    //       onTap: () => FocusScope.of(context).unfocus(),
    //       child: Column(
    //         mainAxisSize: MainAxisSize.max,
    //         children: [
    //           Expanded(
    //             child: NestedScrollView(

            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    title: Text(
                      _tab[_tabController.index].item1,
                      style: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black, fontFamily:'fredokaOne')
                    ),
                    actions: [
                      IconButton(icon: const Icon(Icons.edit),
                      tooltip: 'Make Changes (Edit)',
                      color: Colors.black,
                      onPressed: (){

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
                  // ),
                  ),
                  SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverPersistentHeader(
                      delegate: SliverAppBarDelegate(
                        tabBar: TabBar(
                          labelColor: Colors.black,
                          indicatorColor: Colors.black,
                          labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black, fontFamily:'signikaNegative'),
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
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}




    //   clipBehavior: Clip.none,
    //   fit: StackFit.expand,
    //   children: [
    //     Container(
    //       alignment: Alignment.centerLeft,
    //       //Container Design
    //       decoration: const BoxDecoration(
    //         borderRadius: BorderRadius.only(
    //           bottomRight: Radius.circular(10),
    //           bottomLeft: Radius.circular(10),
    //         ),
    //         gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: [
    //             Color(0xff8360c3),
    //             Color(0xff2ebf91),
    //           ],
    //         ),
    //       ),
    //       child: (_isEditable == false)
    //         ? IconButton(
    //             onPressed: () {
    //                 _isEditable = true;
    //             },
    //             icon: const Icon(
    //               Icons.edit,
    //               color: Colors.black,
    //             ),
    //           )
    //         : IconButton(
    //             onPressed: () {
    //                 _isEditable = false;
    //             },
    //             icon: const Icon(
    //               Icons.save,
    //               color: Colors.black,
    //             ),
    //           )
    //     ),
    //     Center(
    //       child: Opacity(
    //         opacity: shrinkOffset / expandedHeight,
    //         child: const Text(
    //           'Profile',
    //           style: TextStyle(
    //             color: Colors.black,
    //             fontWeight: FontWeight.w700,
    //             fontSize: 23,
    //           ),
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //       top: expandedHeight / 4 - shrinkOffset,
    //       left: MediaQuery.of(context).size.width / 4,
    //       child: Opacity(
    //         opacity: (1 - shrinkOffset / expandedHeight),
    //         child: Column(
    //           children: [
    //             const Text(
    //               'Check out my Profile',
    //               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    //             ),
    //             const SizedBox(
    //               height: 10.0,
    //             ),
    //             Card(
    //               elevation: 10,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(100),
    //               ),
    //               child: SizedBox(
    //                 height: expandedHeight,
    //                 width: MediaQuery.of(context).size.width / 2,
    //                 child: CircularProfileAvatar(
    //                   '',
    //                   child: Image.asset(
    //                     'assets/images/avatar.png',
    //                     fit: BoxFit.fill,
    //                   ),
    //                   radius: 100,
    //                   backgroundColor: Colors.transparent,
    //                   borderColor: Colors.yellow,
    //                   borderWidth: 4,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  