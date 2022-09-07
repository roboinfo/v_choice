import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_choice/page/drawescreen.dart';
import 'package:v_choice/page/home2.dart';


class DonationScreen2 extends StatefulWidget {
  const DonationScreen2({key}) : super(key: key);

  @override
  _DonationScreen2State createState() => _DonationScreen2State();
}

class _DonationScreen2State extends State<DonationScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Row(
          children: [
            Icon(Icons.monetization_on_outlined,
              color: Colors.deepPurple,
              size: 30.0,
            ),
            const Text(
              '                   Donation',
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

                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child:Container(
                    padding: const EdgeInsets.only(top: 7.0,bottom: 7.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: Color.fromRGBO(0, 0, 0, 0.10),
                    ),
                    child: Image.asset("assets/donation.png",
                      // height: 250,
                      width: double.infinity,
                    ),
                  ),
                ),


                const SizedBox(height: 10,),


                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromRGBO(0, 0, 0, 0.10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.attach_money,
                              color: Colors.deepPurple,
                              size: 30.0,
                            ),
                            Text(
                              '         Choose An Amount',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),



                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 5.0, left: 2.0),
                        child: ElevatedButton(
                          onPressed: () {  },

                          style: ElevatedButton.styleFrom(

                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const Text('₹5',
                            style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        //alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 5.0, left: 2.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const Text('₹50',
                            style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        //alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 5.0, left: 2.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const Text('₹100',
                            style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
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
                        padding: const EdgeInsets.only(top: 0.0, left: 2.0,right: 2.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),

                          child: const Text('₹500',
                            style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),


                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 2.0),
                        child: ElevatedButton(
                          onPressed: () {  },

                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),

                          child: const Text('₹1000',
                            style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),

                        ),
                      ),
                    ),

                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 2.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const Text('₹5000',
                            style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.only(top: 10.0, left: 2.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: '₹____',
                              hintStyle: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),

                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),


                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromRGBO(0, 0, 0, 0.10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.privacy_tip_outlined,
                              color: Colors.deepPurple,
                              size: 30.0,
                            ),
                            Text(
                              '      Select Platform',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0),
                            ),
                          ],
                        ),
                      ),
                    ],
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
                          padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                          child: const Text(
                            'Pay Pal *',
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
                      child: Container(
                        // alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                        child: ElevatedButton(
                          onPressed: () async{

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  scrollable: true,
                                  backgroundColor: Colors.blueGrey,
                                  title: const Text("Payment Done Successfully ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0),
                                  ),
                                );
                              },
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // <-- Radius
                            ),
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                            onPrimary: Colors.lightBlueAccent,

                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold),

                          ),

                          child: const Text('PAY PAL',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0
                              )
                          ),
                        ),
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
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                          child: const Text(
                            'MoneyGram.com *',
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
                      child: Container(
                        // alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                        child: ElevatedButton(
                          onPressed: () async{

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  scrollable: true,
                                  backgroundColor: Colors.blueGrey,
                                  title: const Text("Payment Done Successfully ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0),
                                  ),
                                );
                              },
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // <-- Radius
                            ),
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                            onPrimary: Colors.lightBlueAccent,

                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold),

                          ),

                          child: const Text('Money Gram',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0
                              )
                          ),
                        ),
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
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                          child: const Text(
                            'Just Give *',
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
                      child: Container(
                        // alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                        child: ElevatedButton(
                          onPressed: () async{

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  scrollable: true,
                                  backgroundColor: Colors.blueGrey,
                                  title: const Text("Payment Done Successfully ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0),
                                  ),
                                );
                              },
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // <-- Radius
                            ),
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                            onPrimary: Colors.lightBlueAccent,

                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold),

                          ),

                          child: const Text('Just Give',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0
                              )
                          ),
                        ),
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
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                          child: const Text(
                            'Cause for Donation',
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
                      child: Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // <-- Radius
                            ),
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Party Fund ▼',
                            ),
                          ),
                        ),
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
                      child: Container(
                        //alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                          child: const Text(
                            'Referral Code *',
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
                      child: Container(
                        padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // <-- Radius
                            ),
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText:'Enter Referral Code. ex.ABC123*F',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15,),


                Row(
                  children:<Widget> [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0, left: 20.0,  right: 20.0),
                          child: const Text(
                            'I declare that I am an Indian Citizen and I am making this contribution '
                                'to **** Party out of my free will, from income legally earned/owned by me.'
                                'This details that I have provided above are true and nothing has been misrepresented.',
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0),
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
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 0.0, left: 50.0, right: 50.0),
                        child: ElevatedButton(
                          onPressed: () async{

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  scrollable: true,
                                  backgroundColor: Colors.blueGrey,
                                  title: const Text("Payment Done Successfully ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0),
                                  ),
                                );
                              },
                            );
                          },

                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 0, 0, 0.03),
                            onPrimary: Colors.lightBlueAccent,

                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold),

                          ),

                          child: const Text('AGREE & PROCEED',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19.0
                              )
                          ),
                        ),
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
                      child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 0.0),
                          child: const Text(
                            'Manage Donation',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0),
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
