import 'package:flutter/material.dart';



class Saved_Chil_List extends StatefulWidget {
  const Saved_Chil_List({Key? key}) : super(key: key);

  @override
  State<Saved_Chil_List> createState() => _Saved_Chil_ListState();
}

class _Saved_Chil_ListState extends State<Saved_Chil_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Save Child list'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            SizedBox(height: 10,),

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
