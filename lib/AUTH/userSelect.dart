import 'package:flutter/material.dart';
import 'package:image_example/AUTH/loginPage.dart';

class UserSelect extends StatefulWidget {
  const UserSelect({super.key});

  @override
  State<UserSelect> createState() => _UserSelectState();
}

class _UserSelectState extends State<UserSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
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
                    Text('Select login type',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
                    SizedBox(height: 15,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(270, 50),
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide(

                          ))
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(userRole: 'orphanage',)));

                      },
                      child: Text('Orphanage'
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(userRole: 'individual',)));

                      },
                      child: Text('Individual'
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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(userRole: 'organization',)));

                      },
                      child: Text('Organization'),

                    ),
                  ],
                ),
              ) ,
              SizedBox(height: 25,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(270, 50),
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide(

                    ))
                ),
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(userRole: 'authority',)));

                },
                child: Text('Authority'),

              ),
              SizedBox(height: 60,),

              // Text('Return to admin login')
            ],
          ),
        ),
      ),
    );
  }
}
