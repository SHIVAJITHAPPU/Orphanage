import 'package:flutter/material.dart';
import 'package:image_example/AUTH/signUp2.dart';
import 'package:image_example/AUTH/signUp_orphanage.dart';




class SignUp1 extends StatefulWidget {
   SignUp1({super.key,required this.userRole});
  var userRole;

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  @override
  void initState(){
    super.initState();
    print('-----------Inside signup page 1-------------');

    print(widget.userRole);
    print('------------------------');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(


          child: Padding(
            padding: const EdgeInsets.all(35),
            child: SingleChildScrollView(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text('Careconnect',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                  SizedBox(
                    height: 35,
                  ),
                  TextFormField(

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(200, 200, 200, 1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      hintText: 'Enter Email ',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('create username'),
                      ),
                    ],
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration( filled: true,
                      fillColor: Color.fromRGBO(200, 200, 200, 1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),

                    ),
                  ), SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('create password'),
                      ),
                    ],
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
                    height: 10,
                  ),Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Re enter your password'),
                      ),
                    ],
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
                    height: 25,
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,

                      ),
                      onPressed: () {

                          print('-----------pressed next button -------------');

                          print(widget.userRole);
                          print('------------------------');


                        switch(widget.userRole){
                          case 'orphanage':
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_Orphanage()));
                            break;
                          case 'individual':
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp2(userRole: widget.userRole)));
                            break;
                          case 'organization':
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp2(userRole: widget.userRole)));
                            break;
                            //  case 'authority':
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Authority_Home_Bar()));
                            // break;



                        }

                      },
                      child: Text('Next',style: TextStyle(fontSize: 23),),

                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text('Already have an account ?'),
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
                      onPressed: () {},
                      child: Text(' login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

                    ),
                  ),




                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text('OR creating using'),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('Images/Social Logo.png')
                        )
                    ),
                  ),

                  Text(
                    'Terms & Conditions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold// Add this line for underline
                    ),
                  )

                ],
              ),
            ),
          ),
        ));
  }
}

