import 'package:flutter/material.dart';

import 'EXOLRMDEL/Explrmod.dart';
import 'btm_individual.dart';
class SUPPORTING extends StatefulWidget {
  const SUPPORTING({super.key});

  @override
  State<SUPPORTING> createState() => _SUPPORTINGState();
}

class _SUPPORTINGState extends State<SUPPORTING> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(10),
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
            SizedBox(height: 20,),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BTM_Individual()));
            }, icon: Icon(Icons.arrow_back)),
            Text('Supportinng',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
            SizedBox(height: 20,),

            Expanded(
              child: ListView.separated(itemBuilder: (context,index)=>InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BTM_Individual()));

                },
                child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Image(image: AssetImage('${EXPLR[index]['image']}')),
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Orphange Name',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                            Text('No of Children'),
                            Text('Contact No'),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Image(image: AssetImage('Images/Location.png')),
                                SizedBox(width: 5,),
                                Text('Location',style: TextStyle(
                                    color: Colors.blueAccent
                                ),),
                              ],
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: IconButton(onPressed: (){

                          }, icon: Icon(Icons.arrow_forward_ios)),
                        )
                      ],
                    ),
                  ),
                ),
              ), separatorBuilder: (context,index)=> SizedBox(height: 15,), itemCount: 3),
            )
          ],
        ),
      ),
    );
  }
}
