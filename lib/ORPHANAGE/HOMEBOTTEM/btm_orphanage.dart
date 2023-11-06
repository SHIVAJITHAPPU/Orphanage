import 'package:flutter/material.dart';

import '../PROFILEPAGES/home.dart';
import '../PROFILEPAGES/homeProf.dart';
import '../adddetails.dart';
import '../settingspage.dart';

class BTM_Orphanage extends StatefulWidget {
  const BTM_Orphanage({super.key});

  @override
  State<BTM_Orphanage> createState() => _BTM_OrphanageState();
}

class _BTM_OrphanageState extends State<BTM_Orphanage> {
  var selectedIndex = 0;
  List _Intro = [
    HOMEPAGE(),
    ADDETA(),
    HOMEPRO(),
    SETINGS(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Intro.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_add_alt_1_outlined,
                color: Colors.black,
              ),
              label: 'Attractions',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              label: 'Profile',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
              label: 'hotels',
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
