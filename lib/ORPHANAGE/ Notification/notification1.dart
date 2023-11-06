import 'package:flutter/material.dart';
class NOTIFICATIONFST extends StatefulWidget {
  const NOTIFICATIONFST({super.key});

  @override
  State<NOTIFICATIONFST> createState() => _NOTIFICATIONFSTState();
}

class _NOTIFICATIONFSTState extends State<NOTIFICATIONFST> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notification1',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),)),
    backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Adoption requests',style: TextStyle(
                  fontWeight: FontWeight.w400,fontSize: 16
                ),),
              ),
            ),
            SizedBox(height: 10,),
          Expanded(
            child: ListView.separated(itemBuilder: (context,index)=>
                Container(
                  height: 115,
                  width: 383,
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("22/12/2020"),
                        SizedBox(width: 5,),
                        Text("Monday")
                      ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://mumbaimirror.indiatimes.com/thumb/msid-71714110,width-1200,height-900,resizemode-4/.jpg'),
                        ),

                        Text('Useruserr requseted for adoption -\nfor child'),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('4:15'),
                        Text('pm'),

                      ],
                    ),
                  ],
                ),

                )

                , separatorBuilder: (context,index)=>
                    SizedBox(height: 10,)
                , itemCount: 3),
          )
          ],
        ),
      ),

    );
  }
}
