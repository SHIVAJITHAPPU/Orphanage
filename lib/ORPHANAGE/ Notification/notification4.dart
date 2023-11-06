import 'package:flutter/material.dart';

import 'notification1.dart';
import 'notification2.dart';
class NTFCTN4 extends StatefulWidget {
  const NTFCTN4({super.key});

  @override
  State<NTFCTN4> createState() => _NTFCTN4State();
}

class _NTFCTN4State extends State<NTFCTN4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notifications',style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
               SizedBox(height: 30,),
          Stack(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NTFCTNSCND()));

                },

                child: Container(margin: EdgeInsets.fromLTRB(15,25,15,15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                      border: Border.all()

                ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text('Request Accepeted',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color:Colors.grey
                      ),),
                      IconButton(onPressed: (){
                      }, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                  top: 0,
                  child: Card(elevation: 10,
                    color:Colors.black,
                  shape: RoundedRectangleBorder(  borderRadius: BorderRadius.circular(50),),
                    child: CircleAvatar(backgroundColor: Colors.black,foregroundColor: Colors.white,
                    child: Text('5',style: TextStyle(fontWeight: FontWeight.bold),),),
                  ))
            ],
          ),
          Stack(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NTFCTNSCND()));

                },
                child: Container(margin: EdgeInsets.fromLTRB(15,25,15,15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                      border: Border.all()

                ),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text('Request Rejected',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color:Colors.grey
                      ),),
                      IconButton(onPressed: (){
                      }, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                  top: 0,
                  child: Card(elevation: 10,
                    color:Colors.black,
                  shape: RoundedRectangleBorder(  borderRadius: BorderRadius.circular(50),),
                    child: CircleAvatar(backgroundColor: Colors.black,foregroundColor: Colors.white,
                    child: Text('5',style: TextStyle(fontWeight: FontWeight.bold),),),
                  ))
            ],
          ),
          Stack(
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
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text('Adoption Requests Pending',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,color:Colors.grey
                      ),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NTFCTNSCND()));
                      }, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  top: 0,
                  child: Card(elevation: 10,
                    color:Colors.black,
                    shape: RoundedRectangleBorder(  borderRadius: BorderRadius.circular(50),),
                    child: CircleAvatar(backgroundColor: Colors.black,foregroundColor: Colors.white,
                      child: Text('5',style: TextStyle(fontWeight: FontWeight.bold),),),
                  ))
            ],
          ),
          Stack(
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
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text('Adoption Requests Accepted',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,color:Colors.grey
                      ),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NOTIFICATIONFST()));
                      }, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  top: 0,
                  child: Card(elevation: 10,
                    color:Colors.black,
                    shape: RoundedRectangleBorder(  borderRadius: BorderRadius.circular(50),),
                    child: CircleAvatar(backgroundColor: Colors.black,foregroundColor: Colors.white,
                      child: Text('3',style: TextStyle(fontWeight: FontWeight.bold),),),
                  ))
            ],
          ),


        ],
      ),
    );
  }
}
