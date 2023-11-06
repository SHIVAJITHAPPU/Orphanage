import 'package:flutter/material.dart';
import 'package:image_example/INDIVITUAL/tabBar.dart';

import 'IndEditProfile.dart';
import 'Indivitualaaprofiles.dart';
import 'home.dart';


class BTM_Individual extends StatefulWidget {
  const BTM_Individual({super.key});

  @override
  State<BTM_Individual> createState() => _BTM_IndividualState();
}

class _BTM_IndividualState extends State<BTM_Individual> {
  var selectedIndex = 1;
  List _Intro = [
  TAB_BAR(),
  HOMEINDIVITUAL(),
    INDVIDUTALPROFILE(),
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
