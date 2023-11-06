import 'package:flutter/material.dart';
class PROFILE_EDITER extends StatefulWidget {
  const PROFILE_EDITER({super.key});

  @override
  State<PROFILE_EDITER> createState() => _PROFILE_EDITERState();
}

class _PROFILE_EDITERState extends State<PROFILE_EDITER> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                children: [
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child:Container(height: 150,
                      width: 110,
                      child: Stack(children: [
                        Container(
                          height:300 ,
                          width: 300,
                          child: CircleAvatar(
                            radius: 130,

                            backgroundImage: AssetImage('Images/Ellipse.png'),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 98,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey,
                            child: IconButton(onPressed: (){},icon: Icon(Icons.add,color: Colors.black,),),
                          ),
                        ),
                      ],),
                    )
                ),
              ],),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 50,width: 175,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromRGBO(0, 255, 102, 1),Color.fromRGBO(0, 148, 255, 1), ],
                ),
                borderRadius: BorderRadius.circular(30)
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(140, 50),
                  backgroundColor: Colors.transparent,

                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)
              ),
              onPressed: () {},
              child: Text('Change Image',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

            ),
          ),
          SizedBox(height: 20,),

          Container(
            height: 50,width: 175,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromRGBO(0, 255, 102, 1),Color.fromRGBO(0, 148, 255, 1), ],
                ),
                borderRadius: BorderRadius.circular(30)
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(140, 50),
                  backgroundColor: Colors.transparent,

                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)
              ),
              onPressed: () {},
              child: Text('Remove',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

            ),
          ),
        ],
      ),
    );
  }
}
