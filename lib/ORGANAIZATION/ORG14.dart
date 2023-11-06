import 'package:flutter/material.dart';
class IND_EDIT_PROF14 extends StatefulWidget {
  const IND_EDIT_PROF14({super.key});

  @override
  State<IND_EDIT_PROF14> createState() => _IND_EDIT_PROF14State();
}

class _IND_EDIT_PROF14State extends State<IND_EDIT_PROF14> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column( mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text('Edit Profile',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
                  ),

                  SizedBox(height: 50,),
                  Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration( filled: true,

                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Contact no',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration( filled: true,

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),

                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),

                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('Email',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration( filled: true,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(' Location',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration( filled: true,

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),

                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),

                    ),
                  ),
                  SizedBox(height: 50,),
                  Center(
                    child: Container(
                      height: 50,width: 140,
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
                        child: Text(' Sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

                      ),
                    ),
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
