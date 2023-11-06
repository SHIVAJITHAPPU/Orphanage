import 'package:flutter/material.dart';
import 'package:image_example/INDIVITUAL/tabBar.dart';

import 'ORG11.dart';
import 'ORG13.dart';
import 'ORG4.dart';



class BTM_Organization extends StatefulWidget {
  const BTM_Organization({super.key});

  @override
  State<BTM_Organization> createState() => _BTM_OrganizationState();
}

class _BTM_OrganizationState extends State<BTM_Organization> {
  var selectedIndex = 1;
  List _Intro = [
    TAB_BAR(),
    HOMEINDIVITUAL4(),
    INDVIDUTALPROFILE13(),
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
                Icons.notifications_outlined,
                color: Colors.black,
              ),
              label: 'Notification',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              label: 'Profile',
              backgroundColor: Colors.white),

        ],
      ),
    );
  }
}
