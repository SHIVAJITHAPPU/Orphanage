import 'package:flutter/material.dart';
import 'package:image_example/Authority/rejected.dart';
import 'package:image_example/INDIVITUAL/supportinNotification.dart';

import 'Accepeted.dart';
import 'allRequestes.dart';

class Authority_Home_Bar extends StatefulWidget {
  @override
  State<Authority_Home_Bar> createState() => _Authority_Home_BarState();
}

class _Authority_Home_BarState extends State<Authority_Home_Bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,foregroundColor: Colors.black,
          title: Text('Requestes'),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.red,
            tabs: [
              Tab(text: 'Request All '),
              Tab(text: 'Request Accepeted'),
              Tab(text: 'Request Rejected'),

            ],
          ),
        ),
        body: Column(
          children: [    SizedBox(height: 20,),
            Expanded(
              child: TabBarView(

                children: [
              
                  // Contents for Tab 1
                  REQUEST_ALL(),REQUEST_ACCEPETED(),REQUEST_REJECTED(),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
