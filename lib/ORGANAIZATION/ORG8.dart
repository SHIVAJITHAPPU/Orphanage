import 'package:flutter/material.dart';



class IND_CHILD_DETAILS8 extends StatefulWidget {
  const IND_CHILD_DETAILS8({Key? key}) : super(key: key);

  @override
  State<IND_CHILD_DETAILS8> createState() => _IND_CHILD_DETAILS8State();
}

class _IND_CHILD_DETAILS8State extends State<IND_CHILD_DETAILS8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Child list'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('total no : 6',style: TextStyle(fontSize: 18),),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount:6,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    tileColor: Color.fromRGBO(237, 237, 237, 1),
                    contentPadding: EdgeInsets.all(15),
                    leading: Container(
                      height: 68,
                      width: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(255, 255, 255, 1),
                          image: DecorationImage(
                              image: AssetImage('Images/img_new.jpg'),
                              fit: BoxFit.contain
                          )
                      ),
                      //  backgroundColor: Colors.greenAccent,
                      // child: Icon(Icons.person),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Name   : ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ), Text(
                              'Sample name',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Text(
                              'Age       : ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Sample age',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Text(
                              'Gender : ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                    trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 15,),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),



    );
  }
}
