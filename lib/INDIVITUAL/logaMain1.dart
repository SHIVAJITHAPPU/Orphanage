import 'package:flutter/material.dart';

import 'Loginpgs2.dart';
class LOGTYPE extends StatefulWidget {
  const LOGTYPE({super.key});

  @override
  State<LOGTYPE> createState() => _LOGTYPEState();
}

class _LOGTYPEState extends State<LOGTYPE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [SizedBox(height: 40,),
            Container(
              child: Center(child: Text('Careconnect',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,

              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('Images/logo.png'),
                ),

              ),
            ),
            Container(
              child: Column(
                children: [
                   Text('Select login type'),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(270, 50),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LOGINPGS1()));

                    },
                    child: Text('User'
                        ),

                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(270, 50),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide(
                         
                        ))
                    ),
                    onPressed: () {},
                    child: Text('Organization'),

                  ),
                ],
              ),
            ) ,
            SizedBox(height: 100,),
            Text('Return to admin login')
          ],
        ),
      ),
    );
  }
}
