import 'package:flutter/material.dart';

import 'ORG5.dart';
import 'ORG6.dart';
class HOMEINDIVITUAL4 extends StatefulWidget {
  const HOMEINDIVITUAL4({super.key});

  @override
  State<HOMEINDIVITUAL4> createState() => _HOMEINDIVITUAL4State();
}

class _HOMEINDIVITUAL4State extends State<HOMEINDIVITUAL4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Text('Home',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
              SizedBox(height: 15,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration( filled: true,
                    fillColor: Color.fromRGBO(200, 200, 200, 1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    prefixIcon: Icon(Icons.search)

                ),
              ),
              SizedBox(height: 45,),
              Text('Explore',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EXPLORE5()));
                },
                child: Container(


                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('Tap to explore new orphanage'),
                            Image(
                              image: AssetImage('Images/childfst.png'),
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child:IconButton(onPressed: (){
                          },icon: Icon( Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('Supporting',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              SizedBox(height: 20,),
              InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SUPPORTING6()));

                 },
                child: Container(
                  height: 200,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text('Tap to view orphanages you\n support '),
                            Image(image: AssetImage('Images/childsnd.png')),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: IconButton(onPressed: (){
                          },icon: Icon( Icons.arrow_forward_ios),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
