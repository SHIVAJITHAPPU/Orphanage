import 'package:flutter/material.dart';
import 'package:image_example/ORPHANAGE/donateReqst.dart';

import '../ Notification/notification4.dart';
import '../../ORPHANHOMEMODEL/HomeModel.dart';
import '../helpRequest_custom.dart';
import 'homeProf.dart';
import 'orphanProfEdit.dart';
class HOMEPAGE extends StatefulWidget {
  const HOMEPAGE({super.key});

  @override
  State<HOMEPAGE> createState() => _HOMEPAGEState();
}

class _HOMEPAGEState extends State<HOMEPAGE> {
  var helpType;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,

          title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NTFCTN4(),
                ),
                );
              },
                child: Badge(
                  label: Text('8',style: TextStyle(fontSize: 10),),

                  alignment: Alignment.topLeft,
                 smallSize: 15,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.notifications_outlined
                    ,size: 35,),
                ),
              ),
            )
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 95),
                  child: Text('Orphanage Name',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
                ),
                 SizedBox(height: 15,),
                Center(
                  child: Container(

                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Orphanage Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ),
                       // SizedBox(height: 15,),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,top: 5),
                          child: Container(
                            height: 100,
                            width: 330,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:   AssetImage('Images/pexels-iloveswitzerland-7929313 1.png'),
                                )
                            ),
                          ),
                        ),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             color: Colors.white,
                           ),

                           child: TextButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>HOMEPRO()));

                           }, child: Text('View Profile',style: TextStyle(color: Colors.black),)
                             ,),
                         ),
                       )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 95,top: 20),
                  child: Text('Request donations',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
                ),
             Container(height: 200,
               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

              // color: Colors.yellow,
               child: GridView.builder(
               shrinkWrap: true,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10,
                 childAspectRatio: 2

                 ),itemCount: 4,

                   itemBuilder: (context,index)=>
                   InkWell(
                    onTap: (){
                      switch(index){
                        case 0:helpType='fund';break;
                        case 1:helpType='food';break;
                        case 2:helpType='education';break;
                        case 3:helpType='cloth';break;
                      }
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DONATEREQUESTPAGE(req_type: helpType)));
                    },
                     child: Container(

                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.black,
                 ),

                 child: Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(width: 42,height: 42,
                           child: Image(image: AssetImage('${HOME[index]['image']}'),)
                       ),
                       SizedBox(height: 5,),
                       Text('${HOME[index]['name']}',style: TextStyle(color: Colors.white),)

                     ],
                 ),
               ),
                   )



                 ,),
             ),
                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpRequest_Custom(req_type: 'custom',)));
                  },
                  child: Container(
                    width: 180,
                    height: 80,

                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),

                      color: Colors.white,
                    ),

                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 42,height: 42,
                            child: Image(image: AssetImage('Images/custom.png'),)
                        ),
                        SizedBox(height: 5,),
                        Text('Custom',style: TextStyle(color: Colors.black),)

                      ],
                    ),
                  ),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
