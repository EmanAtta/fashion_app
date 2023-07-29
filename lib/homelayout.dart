import 'package:flutter/material.dart';
import 'package:iti_flutter_project/FirestoreImageDisplay.dart';
// ignore: depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iti_flutter_project/TYPES.dart';
import 'package:iti_flutter_project/info_app.dart';

import 'package:iti_flutter_project/newtask.dart';
import 'package:iti_flutter_project/teams.dart';

// ignore: camel_case_types
class homelayout extends StatefulWidget {
  final String email,fullname,username,email1;
  const homelayout({super.key, required this.email ,required this.email1,required this.fullname,required this.username});
  // const homelayout({Key? key}) : super(key: key);
  @override
  State<homelayout> createState() => _homelayoutState();
}

// ignore: camel_case_types
class _homelayoutState extends State<homelayout> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int currentindex = 0;
  List<Widget> screens = [
    const FirestoreImageDisplay(),
    const types_app(),
    const ShowEmail(),
  ];
  List<String> titles = ['', '', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(159, 219, 211, 188),
      appBar: AppBar(

        leading:
        IconButton(
          onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.keyboard_arrow_left
        ),),
        backgroundColor:const Color.fromARGB(159, 219, 211, 188),
        elevation: 0,
        title: Text(titles[currentindex]),
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children:  <Widget>[
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(159, 219, 211, 188),
                ),
                child: Text('Menu drawer'),
              ),
            ),
            ListTile(

              leading: const Icon(
                Icons.app_shortcut,
                size: 50,
              ),
              title: const Text('APPlication Information'),
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Info_App()),);
              },
            ),
            ListTile(
              title: const Text('Team Name'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Team_name()),);
              },
              leading: const Icon(
                Icons.person,
                size: 50,

              )
            ),
          ],
        ),
      ),
      body: screens[currentindex],
      extendBody: false,
      bottomNavigationBar:
          CurvedNavigationBar(
        items: const <Widget>[
          Icon(Icons.home, size: 35),
          Icon(Icons.list, size: 35),
          Icon(Icons.perm_identity, size: 35),
        ],
            color: const Color.fromARGB(215, 157, 91, 67),
            buttonBackgroundColor: Color.fromARGB(180, 89, 99, 76),
        backgroundColor: const Color.fromARGB(159, 219, 211, 188),
        animationCurve: Curves.fastEaseInToSlowEaseOut,
        animationDuration: const Duration(milliseconds: 600),
        letIndexChange: (index) => true,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        key: _bottomNavigationKey,
        index: currentindex,
        height: 45.0,
      ),

    );
  }
}
