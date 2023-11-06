import 'package:flutter/material.dart';

import 'HOMEBOTTEM/btm_orphanage.dart';
import 'loginpage2.dart';



class LOGINPAGE extends StatelessWidget {
  const LOGINPAGE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(


            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text('Careconnect',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(200, 200, 200, 1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      hintText: 'Your Email id',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration( filled: true,
                      fillColor: Color.fromRGBO(200, 200, 200, 1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),

                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(MediaQuery.of(context).size.width, 50),
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BTM_Orphanage()));
                        },
                        child: Text('Login'),

                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text('Don’t have an account ?'),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(MediaQuery.of(context).size.width, 50),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide())
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LOGPAG()));
                      },
                      child: Text('sign up'),

                    ),
                  ),




                  SizedBox(
                    height: 200,
                  ),
                  Text(
                    'user login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.underline, // Add this line for underline
                    ),
                  )

                ],
              ),
            ),
          ),
        ));
  }
}

