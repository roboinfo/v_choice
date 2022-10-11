import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Volunteer());
}

class Volunteer extends StatefulWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  bool Value = false;

  Volunteer({key}) : super(key: key);

  @override
  _VolunteerState createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('donation1').snapshots();

  final _formKey = GlobalKey<FormState>();

  var name = "";
  var mobile = "";
  var email = "";
  var Bdate = "";
  var address1 = "";
  var address2 = "";
  var city = "";
  var state = "";
  var pocode = "";
  var country = "";

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final bdateController = TextEditingController();
  final add1Controller = TextEditingController();
  final add2Controller = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final pocodeController = TextEditingController();
  final countryController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    bdateController.dispose();
    add1Controller.dispose();
    add2Controller.dispose();
    cityController.dispose();
    stateController.dispose();
    pocodeController.dispose();
    countryController.dispose();

    super.dispose();
  }

  clearText() {
    nameController.clear();
    mobileController.clear();
    emailController.clear();
    bdateController.clear();
    add1Controller.clear();
    add2Controller.clear();
    cityController.clear();
    stateController.clear();
    pocodeController.clear();
    countryController.clear();
  }

  // Adding Student
  CollectionReference donation1 =
      FirebaseFirestore.instance.collection('donation');

  Future<void> addUser() {
    return donation1
        .add({
          'name': name,
          'mobile': mobile,
          'email': email,
          'bdate': Bdate,
          'add1': address1,
          'add2': address2,
          'city': city,
          'state': state,
          'pocode': pocode,
          'country': country,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to Add user: $error'));
  }

  bool Value = false;
  bool Value1 = false;
  bool Value2 = false;
  bool Value3 = false;

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
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white70,
              title: Row(
                children: [
                  Icon(
                    Icons.how_to_reg,
                    color: Colors.deepPurple,
                    size: 30.0,
                  ),
                  const Text(
                    '      Volunteer Registration',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black45,
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
                                    top: 10.0, left: 10.0),
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
                                  top: 0.0, left: 90.0, right: 20.0),
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
                          )
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
                                    const EdgeInsets.only(top: 0.0, left: 10.0),
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
                                  top: 0.0, left: 90.0, right: 20.0),
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
                                  if (value == null || value.isEmpty) {
                                    return 'Please Enter Mobile No';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          )
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
                                    const EdgeInsets.only(top: 0.0, left: 10.0),
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
                                  top: 0.0, left: 90.0, right: 20.0),
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
                          )
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
                                    const EdgeInsets.only(top: 0.0, left: 10.0),
                                child: const Text(
                                  'Birth Date *',
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
                                  top: 0.0, left: 90.0, right: 20.0),
                              child: TextFormField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  //<-- SEE HERE
                                  fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                  hintText: 'DD ▼ / MM ▼ / YYYY ▼',
                                  labelStyle: TextStyle(fontSize: 20.0),

                                  errorStyle: TextStyle(
                                      color: Colors.redAccent, fontSize: 15),
                                ),
                                controller: bdateController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return ' Date of Birth ▼';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          )
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
                                    const EdgeInsets.only(top: 0.0, left: 10.0),
                                child: const Text(
                                  'Address *',
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                )),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 90.0, right: 20.0),
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            //<-- SEE HERE
                            fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                            hintText: 'Street Address',
                            labelStyle: TextStyle(fontSize: 20.0),

                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          controller: add1Controller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Address';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 90.0, right: 20.0),
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                            filled: true,
                            //<-- SEE HERE
                            fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                            hintText: 'Street Address Line 2',
                            labelStyle: TextStyle(fontSize: 20.0),

                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          controller: add2Controller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Address';
                            }
                            return null;
                          },
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
                                padding:
                                    const EdgeInsets.only(top: 0.0, left: 10.0),
                                child: const Text(
                                  'City *',
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
                                  top: 0.0, left: 90.0, right: 20.0),
                              child: TextFormField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  //<-- SEE HERE
                                  fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                  hintText: 'Please Enter City ▼',
                                  labelStyle: TextStyle(fontSize: 20.0),

                                  errorStyle: TextStyle(
                                      color: Colors.redAccent, fontSize: 15),
                                ),
                                controller: cityController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'City ▼';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          )
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
                                    const EdgeInsets.only(top: 0.0, left: 10.0),
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
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 90.0, right: 20.0),
                              child: TextFormField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  //<-- SEE HERE
                                  fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                  hintText: 'Please Enter State ▼',
                                  labelStyle: TextStyle(fontSize: 20.0),

                                  errorStyle: TextStyle(
                                      color: Colors.redAccent, fontSize: 15),
                                ),
                                controller: stateController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'State ▼';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          )
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
                                    const EdgeInsets.only(top: 0.0, left: 10.0),
                                child: const Text(
                                  'Postal Code *',
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
                                  top: 0.0, left: 90.0, right: 20.0),
                              child: TextFormField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  //<-- SEE HERE
                                  fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                  hintText: 'Please Enter Postal Code',
                                  labelStyle: TextStyle(fontSize: 20.0),

                                  errorStyle: TextStyle(
                                      color: Colors.redAccent, fontSize: 15),
                                ),
                                controller: pocodeController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Postal Code';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          )
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
                                    const EdgeInsets.only(top: 0.0, left: 10.0),
                                child: const Text(
                                  'Country *',
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
                                  top: 0.0, left: 90.0, right: 20.0),
                              child: TextFormField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  //<-- SEE HERE
                                  fillColor: Color.fromRGBO(0, 0, 0, 0.10),

                                  hintText: 'Please Enter Country ▼',
                                  labelStyle: TextStyle(fontSize: 20.0),

                                  errorStyle: TextStyle(
                                      color: Colors.redAccent, fontSize: 15),
                                ),
                                controller: countryController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Country ▼';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          )
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
                                padding: const EdgeInsets.only(
                                    top: 0.0, left: 10, right: 10.0),
                                alignment: Alignment.center,
                                child: const Text(
                                  'Please indicate areas to volunteer according to your Skills and Interests.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0),
                                )),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(top: 0.0, left: 20),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: Value,
                                    onChanged: (value) {
                                      print(value);

                                      setState(() {
                                        Value = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Election Campaigon",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.black45,
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
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(top: 0.0, left: 20),
                              child: Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: Value1,
                                    onChanged: (value) {
                                      print(value);

                                      setState(() {
                                        Value1 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Emergency",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.black45,
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
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(top: 0.0, left: 20),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: Value2,
                                    onChanged: (value) {
                                      print(value);

                                      setState(() {
                                        Value2 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Medical",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.black45,
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
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              padding:
                                  const EdgeInsets.only(top: 0.0, left: 20),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: Value3,
                                    onChanged: (value) {
                                      print(value);

                                      setState(() {
                                        Value3 = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Community Services",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.black45,
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
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 0.0, left: 50.0, right: 50),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(0, 0, 0, 0.03),
                                ),
                                onPressed: () async {

                                  Map<String, dynamic> data = {
                                    "name": nameController.text,
                                    "mobile": mobileController.text,
                                    "email": emailController.text,
                                    "bdate": bdateController.text,
                                    "add1": add1Controller.text,
                                    "add2": add2Controller.text,
                                    "city": cityController.text,
                                    "state": stateController.text,
                                    "pocode": pocodeController.text,
                                    "country": countryController.text,


                                  };

                                  await FirebaseFirestore.instance
                                      .collection('registration')
                                      .add(data);

                                  clearText();

                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        backgroundColor: Colors.blueGrey,
                                        title: const Text(
                                          "Data Saved Successfully ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22.0),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: const Text(
                                  'Submit',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
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
                                padding: const EdgeInsets.only(
                                    top: 0.0, left: 50.0, right: 50.0),
                                child: const Text(
                                  'Already Have Account.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0),
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
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
