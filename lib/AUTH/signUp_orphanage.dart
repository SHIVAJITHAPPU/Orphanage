import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../Connection/connect.dart';
import '../ORPHANAGE/HOMEBOTTEM/btm_orphanage.dart';
import 'loginPage.dart';

class SignUp_Orphanage extends StatefulWidget {
  SignUp_Orphanage({super.key,
    required this.userRole,
    required this.email,
    required this.pass,
    required this.username,



  });

var userRole;
  var email,pass,username;

  @override
  State<SignUp_Orphanage> createState() => _SignUp_OrphanageState();
}

class _SignUp_OrphanageState extends State<SignUp_Orphanage> {
  var name=TextEditingController();
  var cNo=TextEditingController();
  var loc=TextEditingController();
  var about=TextEditingController();
  var noOfChildren=TextEditingController();
  Future<void> sendData() async {
    var data={
      'email':widget.email,
      'username':widget.username,
      'pass':widget.pass,
      'name':name.text,
      'contact':cNo.text,
      'location':loc.text,
      'about':about.text,
      'role':'orphanage',


    };
    print(data);
    var response=await post(Uri.parse('${Con.url}/register.php'),body: data);
    print(response.body);
    print(response.body);
    if(jsonDecode(response.body)['result']=='success'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Registered Successfully')));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>BTM_Orphanage()));
    }
    else
      {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to register.....')));

      }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Text(
                      'Careconnect',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Orphange name",
              style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),                ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: name,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(200, 200, 200, 1),
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'About',
              style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: about,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(200, 200, 200, 1),
                  hintText: 'Type here',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 12,
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
                              controller: noOfChildren,
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
                              controller: cNo,
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            )),
                          ],
                        )

                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Container(
                //         width: MediaQuery.of(context).size.width*.5,
                //         color: Colors.white,
                //         child: Padding(
                //           padding: const EdgeInsets.only(left: 19),
                //           child: Text(
                //             'Email',
                //             style: TextStyle(
                //                 fontSize: 18,
                //                 color: Colors.black,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //         )),
                //     Container(
                //         width: MediaQuery.of(context).size.width*.5,
                //         color: Colors.white,
                //         child: Row(
                //           children: [
                //             Text(':'),
                //             Expanded(child: TextFormField(
                //               decoration: InputDecoration(
                //                   border: InputBorder.none
                //               ),
                //             )),
                //           ],
                //         )
                //
                //     ),
                //   ],
                // ),
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
                              controller: loc,
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

                  // child: Container(
                  //   height: 258,
                  //   width: 380,
                  //   color: Colors.grey,
                  //   child:Column(
                  //     children: [
                  //       SizedBox(height: 10,),
                  //       Text('Bank details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  //       SizedBox(height: 10,),
                  //       Divider(
                  //         thickness: 2,
                  //         endIndent: 20,
                  //         indent: 20,
                  //       ),
                  //       Row(
                  //         children: [
                  //           Container(
                  //               width: MediaQuery.of(context).size.width*.5,
                  //               color: Colors.grey,
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(left: 19),
                  //                 child: Text(
                  //                   'Bank',
                  //                   style: TextStyle(
                  //                       fontSize: 18,
                  //                       color: Colors.black,
                  //                       fontWeight: FontWeight.bold),
                  //                 ),
                  //               )),
                  //           Container(
                  //               width: 100,
                  //               color: Colors.grey,
                  //               child: Row(
                  //                 children: [
                  //                   Text(':'),
                  //                   Expanded(child: TextFormField(
                  //                     decoration: InputDecoration(
                  //                         border: InputBorder.none
                  //                     ),
                  //                   )),
                  //                 ],
                  //               )
                  //
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //         children: [
                  //           Container(
                  //               width:MediaQuery.of(context).size.width*.5,
                  //               color: Colors.grey,
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(left: 19),
                  //                 child: Text(
                  //                   'Account no',
                  //                   style: TextStyle(
                  //                       fontSize: 18,
                  //                       color: Colors.black,
                  //                       fontWeight: FontWeight.bold),
                  //                 ),
                  //               )),
                  //           Container(
                  //               width: 100,
                  //               color: Colors.grey,
                  //               child: Row(
                  //                 children: [
                  //                   Text(':'),
                  //                   Expanded(child: TextFormField(
                  //                     decoration: InputDecoration(
                  //                         border: InputBorder.none
                  //                     ),
                  //                   )),
                  //                 ],
                  //               )
                  //
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //         children: [
                  //           Container(
                  //               width:MediaQuery.of(context).size.width*.5,
                  //               color: Colors.grey,
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(left: 19),
                  //                 child: Text(
                  //                   'E-payment no',
                  //                   style: TextStyle(
                  //                       fontSize: 18,
                  //                       color: Colors.black,
                  //                       fontWeight: FontWeight.bold),
                  //                 ),
                  //               )),
                  //           Container(
                  //               width:100,
                  //               color: Colors.grey,
                  //               child: Row(
                  //                 children: [
                  //                   Text(':'),
                  //                   Expanded(child: TextFormField(
                  //                     decoration: InputDecoration(
                  //                         border: InputBorder.none
                  //                     ),
                  //                   )),
                  //                 ],
                  //               )
                  //
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //         children: [
                  //           Container(
                  //               width: MediaQuery.of(context).size.width*.5,
                  //               color: Colors.grey,
                  //               child: Padding(
                  //                 padding: const EdgeInsets.only(left: 19),
                  //                 child: Text(
                  //                   'Ccontact no',
                  //                   style: TextStyle(
                  //                       fontSize: 18,
                  //                       color: Colors.black,
                  //                       fontWeight: FontWeight.bold),
                  //                 ),
                  //               )),
                  //           Container(
                  //               width: 100,
                  //               color: Colors.grey,
                  //               child: Row(
                  //                 children: [
                  //                   Text(':'),
                  //                   Expanded(child: TextFormField(
                  //                     decoration: InputDecoration(
                  //                         border: InputBorder.none
                  //                     ),
                  //                   )),
                  //                 ],
                  //               )
                  //
                  //           ),
                  //         ],
                  //       ),
                  //
                  //     ],
                  //   ),
                  // ),
                ),
              ],
            ),SizedBox(
              height: 40,
            ),
            Container(

              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,

                  ),
                  onPressed: () {


                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(userRole: widget.userRole,)));

                  },
                  child: Text('Sign in',style: TextStyle(fontSize: 23),),

                ),
              ),
            ),

          ],


        ),


      ),
    );
  }
}
