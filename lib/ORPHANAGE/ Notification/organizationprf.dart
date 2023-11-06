import 'package:flutter/material.dart';
class ORGANPROF extends StatefulWidget {
  const ORGANPROF({super.key});

  @override
  State<ORGANPROF> createState() => _ORGANPROFState();
}

class _ORGANPROFState extends State<ORGANPROF> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notifications',style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 18,right: 200),
                child: Text('User Profie',style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),),

              ),
            ),SizedBox(height: 30,),
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
                  height: 500,
                  width:double.infinity,
                  child:Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Container(
                            height:100 ,
                            width: 100,
                            color: Colors.grey,
                            child: Stack(
                              children: [

                                Positioned(


                                  child: CircleAvatar(
                                    radius: 80,
                                    backgroundColor: Colors.grey,
                                    child: CircleAvatar(
                                      radius: 80,
                                      backgroundImage: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDe5pjRlyKsIdsZNFOZuYQLbtKuo_UBUgi0g&usqp=CAU'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),

                        Center(
                          child: Row(
                            children: [
                              Text(
                                '    Name           :  ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [

                                  Text('User123',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(top:1),
                          child: Row(
                            children: [
                              Container(

                                  color: Colors.grey,
                                  child: Text(
                                    '    Contact no   :',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Row(
                                children:[
                                  Text('  909080',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 19),
                              child: Text(
                                'Email             :',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [

                                Text('  user@gamil.com',style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 19),
                              child: Text(
                                'Location        :',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [

                                Text('  Sample loc',style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 80,
                          width: 350,
                          color: Colors.grey,
                          child: Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(340, 50),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,

                              ),
                              onPressed: () {},
                              child: Text('Sign in',style: TextStyle(fontSize: 23),),

                            ),
                          ),
                        ),


                      ],
                    ),
                  ),

                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('About Us'),
            ),
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
      ),
    );
  }
}