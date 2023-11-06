import 'package:flutter/material.dart';

class INDSETINGSPAGE extends StatefulWidget {
  const INDSETINGSPAGE({super.key});

  @override
  State<INDSETINGSPAGE> createState() => _INDSETINGSPAGEState();
}

class _INDSETINGSPAGEState extends State<INDSETINGSPAGE> {
  bool isSelected=false;
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
                  children: [ Container(margin: EdgeInsets.fromLTRB(15,25,15,15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all()

                    ),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined)),
                        Text('Notifications',style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold,color:Colors.grey
                        ),),

                        Switch(inactiveThumbColor: Colors.black,
                            value: isSelected, onChanged: (shiva){
                        setState(() {
                          isSelected=shiva;
                        });
                        })
                      ],
                    ),
                  ),


                  ],
                ),
              ],
            ),SizedBox(height: 300,),
            Container(margin: EdgeInsets.fromLTRB(15,25,15,15),
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



          ],
        ),
      ),
    );
  }
}
