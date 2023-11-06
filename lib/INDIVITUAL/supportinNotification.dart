import 'package:flutter/material.dart';

import 'EXOLRMDEL/Explrmod.dart';
class SPNTFCTN extends StatefulWidget {
  const SPNTFCTN({super.key});

  @override
  State<SPNTFCTN> createState() => _SPNTFCTNState();
}

class _SPNTFCTNState extends State<SPNTFCTN> {
  bool btnclr=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(children: [


       Expanded(
       child: ListView.separated(itemBuilder: (context,index)=> Container(
         padding: EdgeInsets.all(10),
         margin: EdgeInsets.all(10),
         height: 130,
         width: MediaQuery.of(context).size.width,
         color: Colors.grey,
         child: Column(
           children: [
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Orphanage'),
                 Text('22/12/2020 Monday')
               ],),
             SizedBox(height: 10,),
             Row(crossAxisAlignment: CrossAxisAlignment.start,

               children: [
                CircleAvatar(
                  backgroundImage: AssetImage('${EXPLR[index]['image']}')),

SizedBox(width: 10,),
                 Expanded(
                   child: Container(width: 100,
                       child: Text('This orphanage needs sponsor for the education of children.please consider a help.')),
                 ),

                 ElevatedButton(
                   style: ElevatedButton.styleFrom( backgroundColor: btnclr? Colors.red:Colors.blue),
                   onPressed: (){
                   setState(() {
                     btnclr=!btnclr;
                   });
                 }, child: Text('Interested'),)

               ],
             )
           ],
         ),
       ), separatorBuilder:(context,index)=> SizedBox(height: 8,), itemCount: 3),
       )
      ],
      ),
    );
  }
}
