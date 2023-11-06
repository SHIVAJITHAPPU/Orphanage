import 'package:flutter/material.dart';
class PROF extends StatefulWidget {
  const PROF({super.key});

  @override
  State<PROF> createState() => _PROFState();
}

class _PROFState extends State<PROF> {
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
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 18),
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
                    child: Column(
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
                              Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Name          :  ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Text('User123',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Container(

                                  color: Colors.grey,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 19),
                                    child: Text(
                                      'Contact no  : ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              Row(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(left: 13,),
                                    child: Text('909080',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),),
                                  ),
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
                                'Email           : ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text('user@gamil.com',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                ),
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
                                'Location      : ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text('Sample loc',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                ),
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
                              child: Text('Contact now',style: TextStyle(fontSize: 23),),

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
              padding: const EdgeInsets.only(top:50,right: 250),
              child: Text('Requested child',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
              ),),
            ),
            Container(
              height: 142,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                color: Colors.grey,
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    height: 73,
                    width: 331,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                      width: 70,

                      child: Image(image:AssetImage('Images/img_new.jpg'),),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              children: [
                                Text(
                                  'Name   : ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ), Text(
                                  'Sample name',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Text(
                                  'Age       : ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Sample age',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Text(
                                  'Gender : ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),

                        Icon(Icons.arrow_forward_ios)
                      ],


                    ),
                  )
                ],
              ),


              ),
            SizedBox(height: 40,)



          ],
        ),
      ),
    );
  }
}