import 'package:flutter/material.dart';
import 'package:image_example/AUTH/signUp1.dart';

import '../Authority/autorityHome.dart';
import '../INDIVITUAL/btm_individual.dart';
import '../ORGANAIZATION/btm_organization.dart';
import '../ORPHANAGE/HOMEBOTTEM/btm_orphanage.dart';




class LoginPage extends StatefulWidget {
  LoginPage({super.key,required this.userRole});
  var userRole;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState(){
    super.initState();
    print('-----------Inside loginPage-------------');

    print(widget.userRole);
    print('------------------------');
  }

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
                  Text('Careconnect',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),
                  ),
                  Image(image: AssetImage('Images/main.png')),
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

                        switch(widget.userRole){
                          case 'orphanage':
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BTM_Orphanage()));
                            break;
                          case 'individual':
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BTM_Individual()));
                            break;
                            case 'organization':
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BTM_Organization()));
                            break;
                            case 'authority':
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Authority_Home_Bar()));
                            break;

                        }
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BTM_Individual()));
                      },
                      child: Text('Login'),

                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Visibility(
                    visible: widget.userRole=='authority'?false:true,

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text('Don’t have an account ?'),
                        ),
                      ],
                    ),
                  ),

                  Visibility(
                    visible: widget.userRole=='authority'?false:true,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(MediaQuery.of(context).size.width, 50),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide())
                        ),
                        onPressed: () {
                          print('-----------pressed signup from login page to create an account-------------');

                          print(widget.userRole);
                          print('------------------------');


                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp1(userRole: widget.userRole,)));
                        },
                        child: Text('sign up'),

                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Visibility(
                      visible: widget.userRole=='authority'?false:true,

                      child: Text('Or login using')),

                  Visibility(
                    visible: widget.userRole=='authority'?false:true,

                    child: Container(height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('Images/Social Logo.png'),
                          ),
                          color: Colors.white
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

