import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_choice/page/drawescreen.dart';
import 'package:v_choice/page/home2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DonationScreen2());
}

class DonationScreen2 extends StatefulWidget {
  const DonationScreen2({key}) : super(key: key);

  @override
  _DonationScreen2State createState() => _DonationScreen2State();
}

class _DonationScreen2State extends State<DonationScreen2> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final Stream<QuerySnapshot> privateDonation =
      FirebaseFirestore.instance.collection('privateDonation').snapshots();

  final _formKey = GlobalKey<FormState>();

  var amount = "";
  var cause = "";
  var rCode = "";

  final amountController = TextEditingController();
  final causeController = TextEditingController();
  final rCodeController = TextEditingController();

  void dispose() {
    amountController.dispose();
    causeController.dispose();
    rCodeController.dispose();

    super.dispose();
  }

  clearText() {
    amountController.clear();
    causeController.clear();
    rCodeController.clear();
  }

  // Adding Registration
  CollectionReference privateDonation1 =
      FirebaseFirestore.instance.collection('privateDonation');

  Future<void> addUser() {
    return privateDonation1
        .add({
          'amount': amount,
          'cause': cause,
          'rCode': rCode,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to Add user: $error'));
  }

  //City Dropdown
  var selectedMethod;

  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();
  List<String> _Method = <String>[
    'Pay Pal',
    'Money Gram',
    'Just Give',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.10),

      // appBar: AppBar(
      //   backgroundColor: Colors.white70,
      //   title: Row(
      //     children: [
      //       Icon(
      //         Icons.monetization_on_outlined,
      //         color: Colors.deepPurple,
      //         size: 30.0,
      //       ),
      //       const Text(
      //         '                   Donation',
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //             color: Colors.black45,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 22.0),
      //       ),
      //     ],
      //   ),
      // ),

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Container(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        //color: Color.fromRGBO(0, 0, 0, 0.10),
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/donation.png",
                        // height: 250,
                        width: double.infinity,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(20.0),
                      //color: Color.fromRGBO(0, 0, 0, 0.10),
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_add_alt_1,
                            color: Colors.deepPurple,
                            size: 30.0,
                          ),
                          Text(
                            '               Enter Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Row(
                  //   children:<Widget> [
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         //alignment: Alignment.center,
                  //         padding: const EdgeInsets.only(top: 5.0, left: 2.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {  },
                  //
                  //           style: ElevatedButton.styleFrom(
                  //
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //           ),
                  //           child: const Text('₹5',
                  //             style: TextStyle(color: Colors.black45,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 18.0),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child:Container(
                  //         //alignment: Alignment.center,
                  //         padding: const EdgeInsets.only(top: 5.0, left: 2.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {  },
                  //           style: ElevatedButton.styleFrom(
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //           ),
                  //           child: const Text('₹50',
                  //             style: TextStyle(color: Colors.black45,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 18.0),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         //alignment: Alignment.center,
                  //         padding: const EdgeInsets.only(top: 5.0, left: 2.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {  },
                  //           style: ElevatedButton.styleFrom(
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //           ),
                  //           child: const Text('₹100',
                  //             style: TextStyle(color: Colors.black45,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 18.0),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  //
                  // Row(
                  //   children:<Widget> [
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         padding: const EdgeInsets.only(top: 0.0, left: 2.0,right: 2.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {  },
                  //           style: ElevatedButton.styleFrom(
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //           ),
                  //
                  //           child: const Text('₹500',
                  //             style: TextStyle(color: Colors.black45,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 18.0),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //
                  //
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child:Container(
                  //         padding: const EdgeInsets.only(top: 0.0, left: 2.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {  },
                  //
                  //           style: ElevatedButton.styleFrom(
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //           ),
                  //
                  //           child: const Text('₹1000',
                  //             style: TextStyle(color: Colors.black45,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 18.0),
                  //           ),
                  //
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         padding: const EdgeInsets.only(top: 0.0, left: 2.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {  },
                  //           style: ElevatedButton.styleFrom(
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //           ),
                  //           child: const Text('₹5000',
                  //             style: TextStyle(color: Colors.black45,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 18.0),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         padding: const EdgeInsets.only(top: 10.0, left: 2.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {  },
                  //           style: ElevatedButton.styleFrom(
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //           ),
                  //           child: const TextField(
                  //             decoration: InputDecoration(
                  //               hintText: '₹____',
                  //               hintStyle: TextStyle(color: Colors.black45,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 15.0),
                  //
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            //alignment: Alignment.center,
                            padding:
                                const EdgeInsets.only(top: 10.0, left: 20.0),
                            child: const Text(
                              'Enter An Amount *',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),


                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 10.0, right: 10.0),
                          child: TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              filled: true,
                              //<-- SEE HERE
                              //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                              fillColor: Colors.white,

                              hintText: 'Enter Amount Here',
                              labelStyle: TextStyle(fontSize: 20.0),

                              errorStyle: TextStyle(
                                  color: Colors.redAccent, fontSize: 15),
                            ),
                            controller: amountController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Valid Amount';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            //alignment: Alignment.center,
                            padding:
                                const EdgeInsets.only(top: 0.0, left: 20.0),
                            child: const Text(
                              'Select Platform *',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 10.0, right: 10.0),
                          child: Container(
                            //color: Color.fromRGBO(0, 0, 0, 0.10),
                            color: Colors.white,

                            child: Container(
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                    color: Colors.black54,
                                    style: BorderStyle.solid,
                                    width: 0.80),
                              ),
                              child: DropdownButton(
                                items: _Method.map((value) => DropdownMenuItem(
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.70)),
                                      ),
                                      value: value,
                                    )).toList(),
                                onChanged: (selectedAccountType) {
                                  print('$selectedAccountType');
                                  setState(() {
                                    selectedMethod = selectedAccountType;
                                  });
                                },
                                value: selectedMethod,
                                isExpanded: false,
                                hint: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Please Select Platform',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.70)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Row(
                  //   children:<Widget> [
                  //
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         //alignment: Alignment.center,
                  //           padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                  //           child: const Text(
                  //             'Pay Pal *',
                  //             style: TextStyle(color: Colors.black38,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 15.0),
                  //           )
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 5,),
                  //
                  // Row(
                  //   children:<Widget> [
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         // alignment: Alignment.center,
                  //         padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                  //         child: ElevatedButton(
                  //           onPressed: () async{
                  //
                  //             showDialog(
                  //               context: context,
                  //               builder: (BuildContext context) {
                  //                 return AlertDialog(
                  //                   scrollable: true,
                  //                   backgroundColor: Colors.blueGrey,
                  //                   title: const Text("Payment Done Successfully ",
                  //                     textAlign: TextAlign.center,
                  //                     style: TextStyle(color: Colors.white,
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 22.0),
                  //                   ),
                  //                 );
                  //               },
                  //             );
                  //           },
                  //
                  //           style: ElevatedButton.styleFrom(
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(12), // <-- Radius
                  //             ),
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //             onPrimary: Colors.lightBlueAccent,
                  //
                  //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  //             textStyle: TextStyle(
                  //                 fontSize: 30,
                  //                 fontWeight: FontWeight.bold),
                  //
                  //           ),
                  //
                  //           child: const Text('PAY PAL',
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(color: Colors.black45,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 19.0
                  //               )
                  //           ),
                  //         ),
                  //       ),
                  //      ),
                  //   ],
                  // ),
                  //
                  // const SizedBox(height: 5,),
                  //
                  // Row(
                  //   children:<Widget> [
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         //alignment: Alignment.center,
                  //           padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                  //           child: const Text(
                  //             'MoneyGram.com *',
                  //             style: TextStyle(color: Colors.black38,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 15.0),
                  //           )
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 5,),
                  //
                  // Row(
                  //   children:<Widget> [
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         // alignment: Alignment.center,
                  //         padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                  //         child: ElevatedButton(
                  //           onPressed: () async{
                  //
                  //             showDialog(
                  //               context: context,
                  //               builder: (BuildContext context) {
                  //                 return AlertDialog(
                  //                   scrollable: true,
                  //                   backgroundColor: Colors.blueGrey,
                  //                   title: const Text("Payment Done Successfully ",
                  //                     textAlign: TextAlign.center,
                  //                     style: TextStyle(color: Colors.white,
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 22.0),
                  //                   ),
                  //                 );
                  //               },
                  //             );
                  //           },
                  //
                  //           style: ElevatedButton.styleFrom(
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(12), // <-- Radius
                  //             ),
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //             onPrimary: Colors.lightBlueAccent,
                  //
                  //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  //             textStyle: TextStyle(
                  //                 fontSize: 30,
                  //                 fontWeight: FontWeight.bold),
                  //
                  //           ),
                  //
                  //           child: const Text('Money Gram',
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(color: Colors.black45,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 19.0
                  //               )
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 5,),
                  //
                  // Row(
                  //   children:<Widget> [
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         //alignment: Alignment.center,
                  //           padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                  //           child: const Text(
                  //             'Just Give *',
                  //             style: TextStyle(color: Colors.black38,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 15.0),
                  //           )
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 5,),
                  //
                  // Row(
                  //   children:<Widget> [
                  //     Flexible(
                  //       flex: 1,
                  //       fit: FlexFit.tight,
                  //       child: Container(
                  //         // alignment: Alignment.center,
                  //         padding: const EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                  //         child: ElevatedButton(
                  //           onPressed: () async{
                  //
                  //             showDialog(
                  //               context: context,
                  //               builder: (BuildContext context) {
                  //                 return AlertDialog(
                  //                   scrollable: true,
                  //                   backgroundColor: Colors.blueGrey,
                  //                   title: const Text("Payment Done Successfully ",
                  //                     textAlign: TextAlign.center,
                  //                     style: TextStyle(color: Colors.white,
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 22.0),
                  //                   ),
                  //                 );
                  //               },
                  //             );
                  //           },
                  //
                  //           style: ElevatedButton.styleFrom(
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(12), // <-- Radius
                  //             ),
                  //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                  //             onPrimary: Colors.lightBlueAccent,
                  //
                  //             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  //             textStyle: TextStyle(
                  //                 fontSize: 30,
                  //                 fontWeight: FontWeight.bold),
                  //
                  //           ),
                  //
                  //           child: const Text('Just Give',
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(color: Colors.black45,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 19.0
                  //               )
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            //alignment: Alignment.center,
                            padding:
                                const EdgeInsets.only(top: 0.0, left: 20.0),
                            child: const Text(
                              'Cause for Donation',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 10.0, right: 10.0),
                          child: TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              filled: true,
                              //<-- SEE HERE
                              //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                              fillColor: Colors.white,

                              hintText: 'Party Fund ▼',
                              labelStyle: TextStyle(fontSize: 20.0),

                              errorStyle: TextStyle(
                                  color: Colors.redAccent, fontSize: 15),
                            ),
                            controller: causeController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Cause';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            //alignment: Alignment.center,
                            padding:
                                const EdgeInsets.only(top: 0.0, left: 20.0),
                            child: const Text(
                              'Referral Code *',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0),
                            )),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 10.0, right: 10.0),
                          child: TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              filled: true,
                              //<-- SEE HERE
                              //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                              fillColor: Colors.white,

                              hintText: 'Enter Referral Code. ex.ABC123*F',
                              labelStyle: TextStyle(fontSize: 20.0),

                              errorStyle: TextStyle(
                                  color: Colors.redAccent, fontSize: 15),
                            ),
                            controller: rCodeController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter ReferralCode';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                                top: 0.0, left: 20.0, right: 20.0),
                            child: const Text(
                              'I declare that I am an Indian Citizen and I am making this contribution '
                              'to **** Party out of my free will, from income legally earned/owned by me.'
                              'This details that I have provided above are true and nothing has been misrepresented.',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 50.0, right: 50.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  Map<String, dynamic> data = {
                                    "amount": amountController.text,
                                    "cause": causeController.text,
                                    "rCode": rCodeController.text,
                                    "platform": selectedMethod.toString(),
                                  };

                                  FirebaseFirestore.instance
                                      .collection('PrivateDonation')
                                      .add(data);

                                  clearText();

                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        backgroundColor: Colors.blueGrey,
                                        title: const Text(
                                          "Payment Done Successfully ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22.0),
                                        ),
                                      );
                                    },
                                  );
                                });
                              }
                              ;
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(0, 0, 0, 0.03),
                              onPrimary: Colors.lightBlueAccent,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              textStyle: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            child: const Text('AGREE & PROCEED',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(top: 0.0),
                            child: const Text(
                              'Manage Donation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
