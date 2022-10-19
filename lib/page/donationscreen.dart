import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_choice/page/drawescreen.dart';
import 'package:v_choice/page/home2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DonationScreen());
}

class DonationScreen extends StatefulWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  DonationScreen({key}) : super(key: key);

  @override
  _DonationScreenState createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('donation1').snapshots();

  final _formKey = GlobalKey<FormState>();

  var name = "";
  var mobile = "";
  var email = "";
  var donation = "";
  var code = "";
  var amount = "";

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final donationController = TextEditingController();
  final codeController = TextEditingController();
  final amountController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    donationController.dispose();
    codeController.dispose();
    amountController.dispose();

    super.dispose();
  }

  clearText() {
    nameController.clear();
    mobileController.clear();
    emailController.clear();
    donationController.clear();
    codeController.clear();
    amountController.clear();
  }

  // Adding donation
  CollectionReference donation1 =
      FirebaseFirestore.instance.collection('donation');

  Future<void> addUser() {
    return donation1
        .add({
          'name': name,
          'mobile': mobile,
          'email': email,
          'donation': donation,
          'code': code,
          'amount': amount,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to Add user: $error'));
  }

  //City Dropdown
  var selectedState, selectedCountry;

  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();
  List<String> _State = <String>[
    'Maharashta',
    'Punjab',
    'Uttar Pradesh',
    'Bihar',
    'Kashmir'
  ];
  //City Dropdown

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // CHeck for Errors
        if (snapshot.hasError) {
          print("Something went Wrong");
        }
        // once Completed, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white70,
              title: Row(
                children: [
                  Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.deepPurple,
                    size: 30.0,
                  ),
                  const Text(
                    '                   Donation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                ],
              ),
            ),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: Container(
                            padding:
                                const EdgeInsets.only(top: 7.0, bottom: 7.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            child: Image.asset(
                              "assets/donation.png",
                              // height: 250,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.deepPurple,
                                      size: 30.0,
                                    ),
                                    Text(
                                      '         Enter An Amount',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Row(
                        //   children: <Widget>[
                        //     Flexible(
                        //       flex: 1,
                        //       fit: FlexFit.tight,
                        //       child: Container(
                        //         //alignment: Alignment.center,
                        //         padding:
                        //             const EdgeInsets.only(top: 5.0, left: 2.0),
                        //         child: ElevatedButton(
                        //           onPressed: () {},
                        //           style: ElevatedButton.styleFrom(
                        //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                        //           ),
                        //           child: const Text(
                        //             '₹5',
                        //             style: TextStyle(
                        //                 color: Colors.black45,
                        //                 fontWeight: FontWeight.bold,
                        //                 fontSize: 18.0),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Flexible(
                        //       flex: 1,
                        //       fit: FlexFit.tight,
                        //       child: Container(
                        //         //alignment: Alignment.center,
                        //         padding:
                        //             const EdgeInsets.only(top: 5.0, left: 2.0),
                        //         child: ElevatedButton(
                        //           onPressed: () {},
                        //           style: ElevatedButton.styleFrom(
                        //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                        //           ),
                        //           child: const Text(
                        //             '₹50',
                        //             style: TextStyle(
                        //                 color: Colors.black45,
                        //                 fontWeight: FontWeight.bold,
                        //                 fontSize: 18.0),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Flexible(
                        //       flex: 1,
                        //       fit: FlexFit.tight,
                        //       child: Container(
                        //         //alignment: Alignment.center,
                        //         padding:
                        //             const EdgeInsets.only(top: 5.0, left: 2.0),
                        //         child: ElevatedButton(
                        //           onPressed: () {},
                        //           style: ElevatedButton.styleFrom(
                        //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                        //           ),
                        //           child: const Text(
                        //             '₹100',
                        //             style: TextStyle(
                        //                 color: Colors.black45,
                        //                 fontWeight: FontWeight.bold,
                        //                 fontSize: 18.0),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // Row(
                        //   children: <Widget>[
                        //     Flexible(
                        //       flex: 1,
                        //       fit: FlexFit.tight,
                        //       child: Container(
                        //         padding: const EdgeInsets.only(
                        //             top: 5.0, left: 2.0, right: 2.0),
                        //         child: ElevatedButton(
                        //           onPressed: () {},
                        //           style: ElevatedButton.styleFrom(
                        //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                        //           ),
                        //           child: const Text(
                        //             '₹500',
                        //             style: TextStyle(
                        //                 color: Colors.black45,
                        //                 fontWeight: FontWeight.bold,
                        //                 fontSize: 18.0),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Flexible(
                        //       flex: 1,
                        //       fit: FlexFit.tight,
                        //       child: Container(
                        //         padding:
                        //             const EdgeInsets.only(top: 0.0, left: 2.0),
                        //         child: ElevatedButton(
                        //           onPressed: () {},
                        //           style: ElevatedButton.styleFrom(
                        //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                        //           ),
                        //           child: const Text(
                        //             '₹1000',
                        //             style: TextStyle(
                        //                 color: Colors.black45,
                        //                 fontWeight: FontWeight.bold,
                        //                 fontSize: 18.0),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Flexible(
                        //       flex: 1,
                        //       fit: FlexFit.tight,
                        //       child: Container(
                        //         padding:
                        //             const EdgeInsets.only(top: 0.0, left: 2.0),
                        //         child: ElevatedButton(
                        //           onPressed: () {},
                        //           style: ElevatedButton.styleFrom(
                        //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                        //           ),
                        //           child: const Text(
                        //             '₹5000',
                        //             style: TextStyle(
                        //                 color: Colors.black45,
                        //                 fontWeight: FontWeight.bold,
                        //                 fontSize: 18.0),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Flexible(
                        //       flex: 1,
                        //       fit: FlexFit.tight,
                        //       child: Container(
                        //         padding:
                        //             const EdgeInsets.only(top: 10.0, left: 2.0),
                        //         child: ElevatedButton(
                        //           onPressed: () {},
                        //           style: ElevatedButton.styleFrom(
                        //             primary: Color.fromRGBO(0, 0, 0, 0.03),
                        //           ),
                        //           child: const TextField(
                        //             decoration: InputDecoration(
                        //               hintText: '₹____',
                        //               hintStyle: TextStyle(
                        //                   color: Colors.black45,
                        //                   fontWeight: FontWeight.bold,
                        //                   fontSize: 15.0),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                //alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 20.0),
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
                                    top: 0.0, left: 20.0, right: 20.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.10),

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
                          height: 20,
                        ),
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
                                    Icon(
                                      Icons.person_add_alt_1,
                                      color: Colors.deepPurple,
                                      size: 30.0,
                                    ),
                                    Text(
                                      '      Enter Your Details Please',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 20.0),
                                  child: const Text(
                                    'Enter Name *',
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
                                    top: 0.0, left: 20.0, right: 20.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                    hintText: 'Enter Your Full Name',
                                    labelStyle: TextStyle(fontSize: 20.0),

                                    errorStyle: TextStyle(
                                        color: Colors.redAccent, fontSize: 15),
                                  ),
                                  controller: nameController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Name';
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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 20.0),
                                  child: const Text(
                                    'Mobile No. *',
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
                                    top: 0.0, left: 20.0, right: 20.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                    hintText: 'Enter Your Mobile No',
                                    labelStyle: TextStyle(fontSize: 20.0),

                                    errorStyle: TextStyle(
                                        color: Colors.redAccent, fontSize: 15),
                                  ),
                                  controller: mobileController,
                                  validator: (value) {
                                    if (value?.length != 10) {
                                      return 'Please Enter Correct Mobile No';
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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 20.0),
                                  child: const Text(
                                    'Email ID *',
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
                                    top: 0.0, left: 20.0, right: 20.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                    hintText: 'Enter Your Email ID',
                                    labelStyle: TextStyle(fontSize: 20.0),

                                    errorStyle: TextStyle(
                                        color: Colors.redAccent, fontSize: 15),
                                  ),
                                  controller: emailController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please Enter Email';
                                    } else if (!value.contains('@')) {
                                      return 'Please Enter Valid Email';
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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 20.0),
                                  child: const Text(
                                    'State *',
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
                                    top: 0.0, left: 20.0, right: 20.0),
                                child: Container(
                                  color: Color.fromRGBO(0, 0, 0, 0.10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                          color: Colors.black54,
                                          style: BorderStyle.solid,
                                          width: 0.80),
                                    ),
                                    child: DropdownButton(
                                      items: _State.map(
                                              (value) => DropdownMenuItem(
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.70)),
                                            ),
                                            value: value,
                                          )).toList(),
                                      onChanged: (selectedAccountType) {
                                        print('$selectedAccountType');
                                        setState(() {
                                          selectedState = selectedAccountType;
                                        });
                                      },
                                      value: selectedState,
                                      isExpanded: false,
                                      hint: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Please Select State',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.70)),
                                        ),
                                      ),
                                    ),
                                  ),
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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 20.0),
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
                                    top: 0.0, left: 20.0, right: 20.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                    hintText: 'Party Fund ▼',
                                    labelStyle: TextStyle(fontSize: 20.0),

                                    errorStyle: TextStyle(
                                        color: Colors.redAccent, fontSize: 15),
                                  ),
                                  controller: donationController,
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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 20.0),
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
                                    top: 0.0, left: 20.0, right: 20.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                    hintText:
                                        'Enter Referral Code. ex.ABC123*F',
                                    labelStyle: TextStyle(fontSize: 20.0),

                                    errorStyle: TextStyle(
                                        color: Colors.redAccent, fontSize: 15),
                                  ),
                                  controller: codeController,
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
                                    // if (_formKey.currentState!.validate()) {
                                    //   setState(() {
                                    //     name = nameController.text;
                                    //     mobile = mobileController.text;
                                    //     email = emailController.text;
                                    //     state = stateController.text;
                                    //     donation = donationController.text;
                                    //     code = codeController.text;
                                    //
                                    //     addUser();
                                    //     clearText();
                                    //   });
                                    // };

                                    if (_formKey.currentState!.validate()) {
                                      setState(() {
                                        Map<String, dynamic> data = {
                                          "name": nameController.text,
                                          "mobile": mobileController.text,
                                          "email": emailController.text,
                                          "state": selectedState.toString(),
                                          "donation": donationController.text,
                                          "code": codeController.text,
                                          "amount": amountController.text,
                                        };

                                        FirebaseFirestore.instance
                                            .collection('donation')
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
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
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
        return CircularProgressIndicator();
      },
    );
  }
}
