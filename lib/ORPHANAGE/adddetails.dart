import 'package:flutter/material.dart';

import 'childAddDtls.dart';
import 'childdetails2.dart';

class ADDETA extends StatefulWidget {
  const ADDETA({Key? key}) : super(key: key);

  @override
  State<ADDETA> createState() => _ADDETAState();
}

class _ADDETAState extends State<ADDETA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CHILD2()));
          },
          child: Container(
            child: ListView.builder(
              itemCount:15,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  tileColor: Color.fromRGBO(237, 237, 237, 1),
                  contentPadding: EdgeInsets.all(15),
                  leading: Container(
                    height: 68,
                    width: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(255, 255, 255, 1),
                      image: DecorationImage(
                        image: AssetImage('Images/img_new.jpg'),
                        fit: BoxFit.contain
                      )
                    ),
                  //  backgroundColor: Colors.greenAccent,
                   // child: Icon(Icons.person),
                  ),
                  title: Column(
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
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 15,),),
                ),
              ),
            ),
          ),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CHILDADD()));
      },
        backgroundColor: Color.fromRGBO(237, 237, 237, 1),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
        child: Container(height: 30,
            child: Image.asset('Images/img_1.png',fit: BoxFit.cover,)),),

    );
  }
}
