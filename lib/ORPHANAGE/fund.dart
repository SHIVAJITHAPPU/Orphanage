import 'package:flutter/material.dart';
class FUNDS extends StatefulWidget {
  const FUNDS({super.key});

  @override
  State<FUNDS> createState() => _FUNDSState();
}

class _FUNDSState extends State<FUNDS> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Send notification',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),)),
        backgroundColor: Colors.white,

      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:28.0),
              child: Container(

                child: Column(

                  children: [
                    Text('notification will be displayed as follows',style:
                    TextStyle(color: Colors.grey),),

                    Card(elevation: 20,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(child: Text('Orphanage name',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),)),
                              SizedBox(height: 30,),
                              Text('This orphanage is in an immediate need for Fund raising.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15)),
                              SizedBox(height: 20,),
                              Text("please consider a help.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(180, 60),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,

              ),
              onPressed: () {},
              child: Text('Sent',style: TextStyle(fontSize: 23),),

            ),
          ),

        ],
      ),
    );
  }
}
