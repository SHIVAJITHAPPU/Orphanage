import 'package:flutter/material.dart';

import 'ORG8.dart';
class ORPHANAGEPROFILE7 extends StatefulWidget {
  const ORPHANAGEPROFILE7({super.key});

  @override
  State<ORPHANAGEPROFILE7> createState() => _ORPHANAGEPROFILE7State();
}

class _ORPHANAGEPROFILE7State extends State<ORPHANAGEPROFILE7> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('Orphanage',),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
                children: [

                  Text('Orphanage name',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400),),
                  Center(
                    child: Container(
                      height: 169,
                      width: 308,

                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('Images/Explr1.png')),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,width: 316,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color.fromRGBO(0, 255, 102, 1),Color.fromRGBO(0, 148, 255, 1), ],
                        ),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(140, 50),
                          backgroundColor: Colors.transparent,

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)
                      ),
                      onPressed: () {},
                      child: Text('Support',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,width: 316,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color.fromRGBO(0, 255, 102, 1),Color.fromRGBO(0, 148, 255, 1), ],
                        ),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(140, 50),
                          backgroundColor: Colors.transparent,

                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>IND_CHILD_DETAILS8()));
                      },
                      child: Text('View Child List',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

                    ),
                  ),
                  Text('About Us',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),

                  SizedBox(height: 10,),

                  Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),

                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text('Details of orphanage like establishment date , history\ncontributions etc and more details for users...'),
                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('read more',style: TextStyle(color: Colors.black45,decoration: TextDecoration.underline),),
                                  ],
                                )
                              ],
                            ),
                          ) ,
                        ),


                        Column(
                          children: [

                            Divider(
                              thickness: 2,
                              endIndent: 20,
                              indent: 20,
                            ),




                          ],
                        ),
                        SizedBox(height: 20,),
                        Column(

                            children: [


                              Center(

                                  child: Container           (

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey,

                                      ),
                                      child:Column(
                                          children: [
                                            SizedBox(height: 10,),
                                            Text('More Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                            SizedBox(height: 10,),
                                            Divider(
                                              thickness: 2,
                                              endIndent: 20,
                                              indent: 20,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                    width: MediaQuery.of(context).size.width*.5,
                                                    color: Colors.grey,
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 19),
                                                      child: Text(
                                                        'Bank',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                    )),
                                                Container(
                                                    width: 100,
                                                    color: Colors.grey,
                                                    child: Row(
                                                      children: [
                                                        Text(':'),
                                                        Expanded(child: TextFormField(
                                                          decoration: InputDecoration(
                                                              border: InputBorder.none
                                                          ),
                                                        )),
                                                      ],
                                                    )

                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                    width:MediaQuery.of(context).size.width*.5,
                                                    color: Colors.grey,
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 19),
                                                      child: Text(
                                                        'Account no',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                    )),
                                                Container(
                                                    width: 100,
                                                    color: Colors.grey,
                                                    child: Row(
                                                      children: [
                                                        Text(':'),
                                                        Expanded(child: TextFormField(
                                                          decoration: InputDecoration(
                                                              border: InputBorder.none
                                                          ),
                                                        )),
                                                      ],
                                                    )

                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                    width:MediaQuery.of(context).size.width*.5,
                                                    color: Colors.grey,
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 19),
                                                      child: Text(
                                                        'E-payment no',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                    )),
                                                Container(
                                                    width:100,
                                                    color: Colors.grey,
                                                    child: Row(
                                                      children: [
                                                        Text(':'),
                                                        Expanded(child: TextFormField(
                                                          decoration: InputDecoration(
                                                              border: InputBorder.none
                                                          ),
                                                        )),
                                                      ],
                                                    )

                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                    width: MediaQuery.of(context).size.width*.5,
                                                    color: Colors.grey,
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 19),
                                                      child: Text(
                                                        'Ccontact no',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                    )
                                                ),
                                                Container(
                                                    width: 100,
                                                    color: Colors.grey,
                                                    child: Row(
                                                      children: [
                                                        Text(':'),
                                                        Expanded(child: TextFormField(
                                                          decoration: InputDecoration(
                                                              border: InputBorder.none
                                                          ),
                                                        )),
                                                      ],
                                                    )

                                                ),


                                              ],
                                            ),

                                          ])
                                  )
                              )
                            ])
                      ]),
                  Divider(
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ),
                  Container           (

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,

                      ),
                      child:Column(
                          children: [
                            SizedBox(height: 10,),
                            Text('Bank details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            SizedBox(height: 10,),
                            Divider(
                              thickness: 2,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width*.5,
                                    color: Colors.grey,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 19),
                                      child: Text(
                                        'Bank',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Container(
                                    width: 100,
                                    color: Colors.grey,
                                    child: Row(
                                      children: [
                                        Text(':'),
                                        Expanded(child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        )),
                                      ],
                                    )

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    width:MediaQuery.of(context).size.width*.5,
                                    color: Colors.grey,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 19),
                                      child: Text(
                                        'Account no',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Container(
                                    width: 100,
                                    color: Colors.grey,
                                    child: Row(
                                      children: [
                                        Text(':'),
                                        Expanded(child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        )),
                                      ],
                                    )

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    width:MediaQuery.of(context).size.width*.5,
                                    color: Colors.grey,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 19),
                                      child: Text(
                                        'E-payment no',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Container(
                                    width:100,
                                    color: Colors.grey,
                                    child: Row(
                                      children: [
                                        Text(':'),
                                        Expanded(child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        )),
                                      ],
                                    )

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width*.5,
                                    color: Colors.grey,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 19),
                                      child: Text(
                                        'Ccontact no',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                ),
                                Container(
                                    width: 100,
                                    color: Colors.grey,
                                    child: Row(
                                      children: [
                                        Text(':'),
                                        Expanded(child: TextFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        )),
                                      ],
                                    )

                                ),


                              ],
                            ),

                          ])
                  )
                ]),
          ),
        )
    );
  }
}
