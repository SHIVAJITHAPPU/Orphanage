import 'package:flutter/material.dart';

import 'PROFILEPAGES/orphanProfEdit.dart';
import 'childdetails2.dart';
class SETINGS extends StatefulWidget {
  const SETINGS({super.key});

  @override
  State<SETINGS> createState() => _SETINGSState();
}

class _SETINGSState extends State<SETINGS> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notifications',style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Settings',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
           Column(
             children: [
               Column(
                 children: [
                   InkWell(
                     onTap: (){},
                     child: Container(margin: EdgeInsets.fromLTRB(15,25,15,15),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(7),
                         border: Border.all()

                     ),
                     height: 70,
                     width: MediaQuery.of(context).size.width,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 35),
                           child: IconButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>PROFEDITS()));

                           }, icon: Icon(Icons.edit_outlined)),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text('Edit profile',style: TextStyle(
                               fontSize: 20,fontWeight: FontWeight.bold,color:Colors.grey
                           ),),
                         ),

                       ],
                     ),
                 ),
                   ),

                   InkWell(
                     onTap: (){},
                     child: Container(margin: EdgeInsets.fromLTRB(15,25,15,15),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(7),
                           border: Border.all()

                       ),
                       height: 70,
                       width: MediaQuery.of(context).size.width,
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 35),
                             child: IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CHILD2()));
                             }, icon: Icon(Icons.edit_outlined)),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 10),
                             child: Text('Edit child data',style: TextStyle(
                                 fontSize: 20,fontWeight: FontWeight.bold,color:Colors.grey
                             ),),
                           ),

                         ],
                       ),
                     ),
                   ),

                 ],
               ),
             ],
           ),SizedBox(height: 200,),
            InkWell(
              onTap: (){},
              child: Container(margin: EdgeInsets.fromLTRB(15,25,15,15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all()

                ),
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Log out',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,color:Colors.grey
                      ),),
                    ),

                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
