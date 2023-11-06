import 'package:flutter/material.dart';

import 'EditProfile.dart';
import 'orphanProfEdit.dart';
class HOMEPRO extends StatefulWidget {
  const HOMEPRO({super.key});

  @override
  State<HOMEPRO> createState() => _HOMEPROState();
}

class _HOMEPROState extends State<HOMEPRO> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 15,),
            Text('Orphange name',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
            SizedBox(height: 15,),
            Column(
              children: [
                Center(
                  child: Container(
                    height: 227,
                    width: 324,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),

                     image: DecorationImage(
                       fit: BoxFit.cover,
                    image:   AssetImage('Images/pexels-iloveswitzerland-7929313 1.png',),
                     )
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            alignment: Alignment.topRight,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            backgroundColor: Colors.white54,
                            minimumSize: Size(150, 30)

                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PROFEDITS()));

                          },
                          child: Text(
                            'Edit Profile picture',textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),


                  ),),
                Padding(
                  padding: const EdgeInsets.only(left: 190,top: 20),
                  child: Container(
                    height: 30,
                    width: 119,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),

    child: Center(
      child: TextButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>EDITPROF()));
      }, child: Text('Edit details',style: TextStyle(color: Colors.black),)
        ,),
    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text('About Us',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
                ),
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

                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Center(
                      child: Text(
                        'More details',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                ),
                Divider(
                  thickness: 2,
                  endIndent: 20,
                  indent: 20,
                ),

                Row(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width*.5,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Text(
                            'Name of Children',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width*.5,
                        color: Colors.white,
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
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Text(
                            'Contact no',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width*.5,
                        color: Colors.white,
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
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width*.5,
                        color: Colors.white,
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
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Text(
                            'Location',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width*.5,
                        color: Colors.white,
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


              ],
            ),
            SizedBox(height: 20,),
            Column(

              children: [


                Center(

                  child: Container(

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

                      ],
                    ),
                  ),
                ),
              ],
            ),SizedBox(
              height: 40,
            ),

          ],
        ),
      ),
    );
  }
}
