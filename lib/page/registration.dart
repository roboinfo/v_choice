import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Volunteer());
}

class Volunteer extends StatefulWidget {
  bool Value = false;
  Volunteer({key}) : super(key: key);

  @override
  _VolunteerState createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  bool Value = false;
  bool Value1 = false;
  bool Value2 = false;
  bool Value3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Row(
          children: [
            Icon(Icons.how_to_reg,
              color: Colors.deepPurple,
              size: 30.0,
            ),
            const Text(
              '      Volunteer Registration',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [

                const SizedBox(height: 5,),


                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                          child: const Text(
                            'Enter Name *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Enter Your Full Name',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                          child: const Text(
                            'Mobile No. *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Enter Your Mobile Number',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                          child: const Text(
                            'Email ID *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Enter Your Email ID',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                          child: const Text(
                            'Birth Date *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                      padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                      child: ElevatedButton(
                        onPressed: () {  },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(0, 0, 0, 0.03),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText:'DD ▼ / MM ▼ / YYYY ▼ ',
                          ),
                        ),
                      ),
                    ),
                    )
                  ],
                ),

                const SizedBox(height: 5,),
                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                          child: const Text(
                            'Address *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),

                Container(
                  padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(0, 0, 0, 0.03),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText:'Street Address',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Container(
                  padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(0, 0, 0, 0.03),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText:'Street Address Line 2',
                      ),
                    ),
                  ),
                ),


              const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                          child: const Text(
                            'City *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Select Your City ▼',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                          child: const Text(
                            'State *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Select Your State ▼',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                          child: const Text(
                            'Postal Code *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Enter your Postal Code ',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 10.0),
                          child: const Text(
                            'Country *',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 90.0, right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Select Your Country ▼',
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
          Row(
            children:<Widget> [
            Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child:Container(
                    padding: const EdgeInsets.only(top: 0.0,left:10, right: 10.0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Please indicate areas to volunteer according to your Skills and Interests.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    )
            ),
            )
            ],
          ),


                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                      padding: const EdgeInsets.only(top: 0.0,left: 20),
                      child: Row(
                        children: [
                          Checkbox(
                            value: Value,
                            onChanged: (value){
                              print(value);

                              setState(() {
                                Value = value!;
                              });
                            },
                          ),
                          Text("Election Campaigon",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                    ),

                  ],
                ),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.only(top: 0.0,left: 20),
                        child: Row(
                          children:<Widget> [
                            Checkbox(
                              value: Value1,
                              onChanged: (value){
                                print(value);

                                setState(() {
                                  Value1 = value!;
                                });
                              },
                            ),
                            Text("Emergency",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.only(top: 0.0,left: 20),
                        child: Row(
                          children: [
                            Checkbox(
                              value: Value2,
                              onChanged: (value){
                                print(value);

                                setState(() {
                                  Value2 = value!;
                                });
                              },
                            ),
                            Text("Medical",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.only(top: 0.0,left: 20),
                        child: Row(
                          children: [
                            Checkbox(
                              value: Value3,
                              onChanged: (value){
                                print(value);

                                setState(() {
                                  Value3 = value!;
                                });
                              },
                            ),
                            Text("Community Services",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),

                      ),
                    ),

                  ],
                ),


                Row(
                  children:<Widget> [
                    Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.only(top: 0.0, left: 50.0, right: 50 ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(0, 0, 0, 0.03),
                        ),

                        onPressed: () async{
                          showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              scrollable: true,
                              backgroundColor: Colors.blueGrey,
                              title: const Text("Data Saved Successfully ",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22.0),
                              ),
                            );
                          },
                          );
                        },


                        child: const Text('Submit',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),


                const SizedBox(height: 5,),

                Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 50.0, right: 50.0),
                        child: const Text(
                          'Already Have Account.',
                          textAlign: TextAlign.center, style: TextStyle(color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0),
                        )
                    ),
                    ),
                  ],
                ),


                const SizedBox(height: 5,),



              ],
            ),
          ),
        ),
      ),


    );
  }
}
