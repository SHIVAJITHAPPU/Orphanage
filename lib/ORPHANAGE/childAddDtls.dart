import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class CHILDADD extends StatefulWidget {
  const CHILDADD({super.key});

  @override
  State<CHILDADD> createState() => _CHILDADDState();
}

class _CHILDADDState extends State<CHILDADD> {
  TextEditingController dateCtrl = TextEditingController();
  TextEditingController dateCtrl2 = TextEditingController();


  DateTime selectedDate = DateTime.now(); // Initialize selectedDate with the current date
  DateTime selectedDate2 = DateTime.now(); // Initialize selectedDate with the current date

  Future<void> getDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      // If a date is picked, update the selectedDate and the text field
      setState(() {
        selectedDate = pickedDate;
        dateCtrl.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }
  Future<void> getDate2() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate2,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      // If a date is picked, update the selectedDate and the text field
      setState(() {
        selectedDate2 = pickedDate;
        dateCtrl2.text = DateFormat('dd/MM/yyyy').format(selectedDate2);
      });
    }
  }
@override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,

      appBar: AppBar(
        title: Center(child: Text('Child Add details',style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.white,
                height:170,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        height: 100,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://simg.nicepng.com/png/small/249-2491514_ganesh-ramachandra-human-head-silhouette-front.png'),
                            )
                        ),

                      ),

                    ),
                    Container(
                      height: 20,

                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text('Photo(optional)',style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                  ],
                ),



              ),

            ),SizedBox(height: 30,
            ),

            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Name ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                       Expanded(child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10),
                         child: Container(height: 20,
                             child: TextFormField(style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(17)
                            ),
                             )),
                       )),
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Nick name',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(height: 20,
                              child: TextFormField(style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(17)
                                ),
                              )),
                        )),
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Age',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(height: 20,
                              child: TextFormField(style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(17)
                                ),
                              )),
                        )),
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Gender',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(height: 20,
                              child: TextFormField(style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(17)
                                ),
                              )),
                        )),
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Birth date',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(height: 20,
                              child: TextFormField(
                                controller: dateCtrl,
                                onTap: () {
                                  getDate();
                                },
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(17)
                                ),
                              )),
                        )),
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Joind date',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(height: 20,
                              child: TextFormField( controller: dateCtrl2,
                                onTap: () {
                                  getDate2();
                                },
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(17)
                                ),
                              )),
                        )),
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Known location',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(height: 20,
                              child: TextFormField(style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(17)
                                ),
                              )),
                        )),
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Blood group',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(height: 20,
                              child: TextFormField(style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(17)
                                ),
                              )),
                        )),
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Orohan type',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                              fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                        Text('  Maternal / Paternal /Double',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        'Adoption status',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )),

                Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Text(':',style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),),
                       Text('  Ready / Can’t adopt',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                      ],
                    )

                ),
              ],
            ),
            SizedBox(height: 20,),
            Center(

              child: Card(
                elevation: 20,
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: Colors.grey,
                  ),



                  child:Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('Health report',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(height: 10,),
                      Divider(
                        thickness: 2,

                      ),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Medical status',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Container(
                              width: 100,
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(height: 20,
                                        child: TextFormField(style: TextStyle(fontSize: 20),
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(17)
                                          ),
                                        )),
                                  )),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width:MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Diseases',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Container(
                              width: 100,
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(height: 20,
                                        child: TextFormField(style: TextStyle(fontSize: 20),
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(17)
                                          ),
                                        )),
                                  )),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width:MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Disabilities',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Container(
                              width:100,
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(height: 20,
                                        child: TextFormField(style: TextStyle(fontSize: 20),
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(17)
                                          ),
                                        )),
                                  )),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Height',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Container(
                              width: 100,
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(height: 20,
                                        child: TextFormField(style: TextStyle(fontSize: 20),
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(17)
                                          ),
                                        )),
                                  )),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Weight',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Container(
                              width: 100,
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(height: 20,
                                        child: TextFormField(style: TextStyle(fontSize: 20),
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(17)
                                          ),
                                        )),
                                  )),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width*.5,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 19),
                                child: Text(
                                  'Medicines',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Container(
                              width: 100,
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Text(':',style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(height: 20,
                                        child: TextFormField(style: TextStyle(fontSize: 20),
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(17)
                                          ),
                                        )),
                                  )),
                                ],
                              )

                          ),
                        ],
                      ),
                      SizedBox(height: 15,)

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(

              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,

                  ),
                  onPressed: () {},
                  child: Text('Save',style: TextStyle(fontSize: 23),),

                ),
              ),
            ),


          ],

        ),
      ),
    );
  }
}
