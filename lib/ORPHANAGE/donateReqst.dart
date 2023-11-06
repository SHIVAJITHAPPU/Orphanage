import 'package:flutter/material.dart';
class DONATEREQUESTPAGE extends StatefulWidget {
   DONATEREQUESTPAGE({super.key,required this.req_type});
var req_type;
  @override
  State<DONATEREQUESTPAGE> createState() => _DONATEREQUESTPAGEState();
}

class _DONATEREQUESTPAGEState extends State<DONATEREQUESTPAGE> {
  var content=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(centerTitle: true,
        title: Text('Help Request - ${widget.req_type}',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
        backgroundColor: Colors.white38,
        foregroundColor: Colors.black,

      ),
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            // height:80,
              width: 318,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                color: Colors.red,
              ),
              child: TextFormField(
                controller: content,
               minLines: 5,
                maxLines:15,

                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                 border: OutlineInputBorder(
                     borderRadius:BorderRadius.all(Radius.circular(20))
                 ),
                  hintText: 'Type here',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  contentPadding: EdgeInsets.all(20)

                ),

              ),
            ),
            SizedBox(height: 20,),

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
      ),
    );
  }
}
