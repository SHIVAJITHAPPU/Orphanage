import 'package:flutter/material.dart';
import 'package:image_example/INDIVITUAL/supportinNotification.dart';

class TAB_BAR extends StatefulWidget {
  @override
  State<TAB_BAR> createState() => _TAB_BARState();
}

class _TAB_BARState extends State<TAB_BAR> {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.white,foregroundColor: Colors.black,
            title: Text('Notification'),
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.red,
              tabs: [
                Tab(text: 'Supporting'),
                Tab(text: 'All'),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Contents for Tab 1
              SPNTFCTN(),SPNTFCTN(),
            ],
          ),
        ),

    );
  }
}
