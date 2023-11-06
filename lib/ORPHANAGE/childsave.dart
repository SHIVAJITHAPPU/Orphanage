import 'package:flutter/material.dart';

import 'HOMEBOTTEM/btm_orphanage.dart';
import 'adddetails.dart';
import 'childAddDtls.dart';
class CHILDSV extends StatefulWidget {
  const CHILDSV({super.key});

  @override
  State<CHILDSV> createState() => _CHILDSVState();
}

class _CHILDSVState extends State<CHILDSV> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Child details',style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.white,
                height:170,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://simg.nicepng.com/png/small/249-2491514_ganesh-ramachandra-human-head-silhouette-front.png'),
                            )
                        ),

                      ),

                    ),
                    Container(
                      height: 20,

                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text('Photo(optional)',style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                  ],
                ),



              ),

            ),SizedBox(height: 30,
            ),

            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Name ',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Sample name',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Nick name',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Sample nick name',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Age',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('5 Years',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Gender',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Male',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Birth date',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('22/12/2017',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Joind date',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('02/08/2020',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Known location',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Malappuram',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Blood group',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('o+ve',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Orohan type',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('double orphan',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Adoption status',
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
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Ready for adoption',style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),
                        )
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
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
                  height: 270,
                  width: 380,

                  child:Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('Health report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(height: 10,),
                      Divider(
                        thickness: 2,

                      ),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Medical status',
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
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Good',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width:MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Diseases',
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
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('None',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width:MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Disabilities',
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
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('None',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Height',
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
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('108.2 cm',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Weight',
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
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('18 kg',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Medicines',
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
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('None',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              )

                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(

              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,

                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BTM_Orphanage()));
                  },
                  child: Text('Save',style: TextStyle(fontSize: 23),),

                ),
              ),
            ),


          ],

        ),
      ),
    );
  }
}
