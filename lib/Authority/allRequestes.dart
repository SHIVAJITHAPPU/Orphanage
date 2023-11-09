import 'package:flutter/material.dart';

class REQUEST_ALL extends StatefulWidget {
  const REQUEST_ALL({super.key});

  @override
  State<REQUEST_ALL> createState() => _REQUEST_ALLState();
}

class _REQUEST_ALLState extends State<REQUEST_ALL> {
  bool btnclr=false;
  bool btnclr1=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(children: [


        Expanded(
          child: ListView.separated(itemBuilder: (context,index)=> Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue[50],

            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Orphanage'),
                    Text('22/12/2020 Monday')
                  ],),
                SizedBox(height: 10,),
                Row(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Text('CHILD ID:',style: TextStyle(fontSize: 15),),
                      TextButton(onPressed: (){}, child: Text('###1237',style: TextStyle(fontSize: 15),)),
                      ],),
                    SizedBox(width: 10,),


                  ],
                ),
                Row(

                  children: [
                    Text('USER ID:',style: TextStyle(fontSize: 15),),
                    TextButton(onPressed: (){}, child: Text('###85215',style: TextStyle(fontSize: 15),)),
                  ],),
             Row(
               children: [
                 ElevatedButton(
                   style: ElevatedButton.styleFrom( backgroundColor: btnclr1? Colors.red:Colors.blue),

                   onPressed: (){
                     setState(() {
                       btnclr1=!btnclr1;
                     });
                   },
                  child: Text('PENDING'),),

                 SizedBox(width: 15,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom( backgroundColor: btnclr? Colors.green:Colors.blue),
                   onPressed: (){
                     setState(() {
                       btnclr=!btnclr;
                     });
                   }, child: Text('ACCEPETED'),
                 ),
               ],
             )
              ],
            ),
          ), separatorBuilder:(context,index)=> SizedBox(height: 8,), itemCount: 9),
        )
      ],
      ),
    );
  }
}
