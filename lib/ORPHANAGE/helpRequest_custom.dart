import 'package:flutter/material.dart';
class HelpRequest_Custom extends StatefulWidget {
   HelpRequest_Custom({super.key,required this.req_type});
  var req_type;

  @override
  State<HelpRequest_Custom> createState() => _HelpRequest_CustomState();
}

class _HelpRequest_CustomState extends State<HelpRequest_Custom> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Custom Request',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:28.0),
              child: Container(

                child: Column(

                  children: [
                    // Text('notification will be displayed as follows',style:
                    // TextStyle(color: Colors.grey),),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Text('Description',style:
                        TextStyle(color: Colors.grey)),
                        Container(
                          height:192,
                          width: 318,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextFormField(minLines: 5,maxLines: 15,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(

                            contentPadding: EdgeInsets.all(20),
                            border: OutlineInputBorder(
                                borderRadius:BorderRadius.all(Radius.circular(20))
                            ),
                            hintText: 'Type here',
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 15),


                            ),

                          ),
                      ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 100,

                      child: Column(

                        children: [
                          Text('Message Title',style:
                          TextStyle(color: Colors.grey),),

                          Card(elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding:EdgeInsets.all(10),
                                    child: TextFormField(
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Type here',
                                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                                    )
                                ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(180, 60),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,

              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Request sent successfully')));
                Navigator.pop(context);

              },
              child: Text('Sent',style: TextStyle(fontSize: 23),),

            ),
          ),

        ],
      ),
    );
  }
}
