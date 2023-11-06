import 'package:flutter/material.dart';

import 'ORG14.dart';
import 'ORG18.dart';
import 'btm_organization.dart';
class INDVIDUTALPROFILE13 extends StatefulWidget {
  const INDVIDUTALPROFILE13({super.key});

  @override
  State<INDVIDUTALPROFILE13> createState() => _INDVIDUTALPROFILE13State();
}

class _INDVIDUTALPROFILE13State extends State<INDVIDUTALPROFILE13> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notifications',style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text('User Profie',style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),),

                ),
              ),SizedBox(height: 30,),
              Center(

                child: Card(
                  elevation: 20,
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      color: Colors.grey,
                    ),
                    height: 500,
                    width:double.infinity,
                    child:Center(
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child:Container(height: 150,
                                width: 110,
                                child: Stack(children: [
                                  Container(
                                    height:110 ,
                                    width: 100,
                                    color: Colors.grey,
                                    child: CircleAvatar(
                                      radius: 80,
                                      backgroundImage: AssetImage('Images/Explr2.png'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 27,
                                    top: 75,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PROFILE_EDITER18()));
                                      },icon: Icon(Icons.edit_outlined,color: Colors.black,),),
                                    ),
                                  ),
                                ],),
                              )
                          ),
                          SizedBox(height: 50,),

                          Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 19),
                                  child: Text(
                                    'Name          :  ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text('User123',style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Container(

                                    color: Colors.grey,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 19),
                                      child: Text(
                                        'Contact no  : ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Row(
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.only(left: 13,),
                                      child: Text('909080',style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Email           : ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('user@gamil.com',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Location      : ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Sample loc',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),

                            ],
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 80,
                            width: 350,
                            color: Colors.grey,
                            child: Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(115, 30),
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,

                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IND_EDIT_PROF14()));

                                },
                                child: Text(' Edit profile',style: TextStyle(fontSize: 23),),

                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),






            ],
          ),
        ),
      ),
    );
  }
}