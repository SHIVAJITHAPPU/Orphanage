import 'package:flutter/material.dart';
class PROFEDITS extends StatefulWidget {
  const PROFEDITS({super.key});

  @override
  State<PROFEDITS> createState() => _PROFEDITSState();
}

class _PROFEDITSState extends State<PROFEDITS> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Profile image',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 15,),
            Text('Edit profile image',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
            SizedBox(height: 90,),
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
                          image:   AssetImage('Images/Explr1.png'),
                        )
                    ),),),
                SizedBox(height: 100,),
                Container(
                  height: 80,
                  width: 350,
                  color: Colors.white,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side:const BorderSide() ,
                        minimumSize: Size(340, 50),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,


                      ),
                      onPressed: () {},
                      child: Text('Add new image',style: TextStyle(fontSize: 23),),

                    ),
                  ),
                ),

                Container(
                  height: 80,
                  width: 350,
                  color: Colors.white,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side:const BorderSide() ,
                        minimumSize: Size(340, 50),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,

                      ),
                      onPressed: () {},
                      child: Text('Remove image',style: TextStyle(fontSize: 23),),

                    ),
                  ),
                ),
              ],

            ),


  ]
        ),
      ),
    );
  }
}

