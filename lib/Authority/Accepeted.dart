import 'package:flutter/material.dart';

class REQUEST_ACCEPETED extends StatefulWidget {
  const REQUEST_ACCEPETED({super.key});

  @override
  State<REQUEST_ACCEPETED> createState() => _REQUEST_ACCEPETEDState();
}

class _REQUEST_ACCEPETEDState extends State<REQUEST_ACCEPETED> {
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
              color: Colors.green[100],

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

              ],
            ),
          ), separatorBuilder:(context,index)=> SizedBox(height: 8,), itemCount: 9),
        )
      ],
      ),
    );
  }
}
