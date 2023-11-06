import 'package:flutter/material.dart';

import '../INDIVITUAL/EXOLRMDEL/Explrmod.dart';
import 'ORG7.dart';
import 'btm_organization.dart';

class EXPLORE5 extends StatefulWidget {
  const EXPLORE5({super.key});

  @override
  State<EXPLORE5> createState() => _EXPLORE5State();
}

class _EXPLORE5State extends State<EXPLORE5> {
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

              Navigator.push(context, MaterialPageRoute(builder: (context)=>BTM_Organization()));
            }, icon: Icon(Icons.arrow_back)),
            Text('Explore',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
            SizedBox(height: 20,),

            Expanded(
              child: ListView.separated(itemBuilder: (context,index)=>InkWell( onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ORPHANAGEPROFILE7()));
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
                            Text('Orphange Name',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
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
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
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
