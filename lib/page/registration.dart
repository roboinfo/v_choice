import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  var address1 = "";
  var address2 = "";
  var pocode = "";
  var country = "";

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final add1Controller = TextEditingController();
  final add2Controller = TextEditingController();
  final pocodeController = TextEditingController();
  final countryController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    add1Controller.dispose();
    add2Controller.dispose();
    pocodeController.dispose();
    countryController.dispose();

    super.dispose();
  }

  clearText() {
    nameController.clear();
    mobileController.clear();
    emailController.clear();
    add1Controller.clear();
    add2Controller.clear();
    pocodeController.clear();
    countryController.clear();
  }

  // Adding Registration
  CollectionReference donation1 =
      FirebaseFirestore.instance.collection('donation');

  Future<void> addUser() {
    return donation1
        .add({
          'name': name,
          'mobile': mobile,
          'email': email,
          'add1': address1,
          'add2': address2,
          'pocode': pocode,
          'country': country,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to Add user: $error'));
  }

  //Checkbox
  bool Election_Campaigon = false;
  bool Emergency = false;
  bool Medical = false;
  bool Community_Services = false;

  //Checkbox

  //City Dropdown
  var selectedCity, selectedState, selectedCountry;

  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();
  List<String> _city = <String>[
    'Pune',
    'Mumbai',
    'Nagpur',
    'Solapur',
    'Kolhapur'
  ];
  List<String> _State = <String>['Maharashtra'];
  List<String> _Country = <String>['India'];

  //City Dropdown

  // DatePicker Birth date
  TextEditingController birthdate = TextEditingController();

  @override
  void initState() {
    birthdate.text = ""; //set the initial value of text field
    super.initState();
  }

  // DatePicker Birth date

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
            //backgroundColor: Colors.white,
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.10),

            // appBar: AppBar(
            //   backgroundColor: Colors.white70,
            //   title: Row(
            //     children: [
            //       Icon(
            //         Icons.how_to_reg,
            //         color: Colors.deepPurple,
            //         size: 30.0,
            //       ),
            //       const Text(
            //         '      Volunteer Registration',
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
                                  '               Volunteer Details',
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
                                    top: 0.0, left: 10.0, right: 10.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                                    fillColor: Colors.white,

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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 10.0),
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
                                    top: 0.0, left: 10.0, right: 10.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                                    fillColor: Colors.white,

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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 10.0),
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
                                    top: 0.0, left: 10.0, right: 10.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                                    fillColor: Colors.white,

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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 10.0),
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
                          children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 0.0, left: 10.0, right: 10.0),
                                child: Container(
                                  //color: Color.fromRGBO(0, 0, 0, 0.10),
                                  color: Colors.white,

                                  child: TextField(
                                    controller: birthdate,
                                    //editing controller of this TextField
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.calendar_today),
                                        //icon of text field
                                        labelText:
                                            "Birth Date" //label text of field
                                        ),
                                    readOnly: true,
                                    //set it true, so that user will not able to edit text
                                    onTap: () async {
                                      DateTime? pickedDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1950),
                                          //DateTime.now() - not to allow to choose before today.
                                          lastDate: DateTime(2100));

                                      if (pickedDate != null) {
                                        print(
                                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                        String formattedDate =
                                            DateFormat('yyyy-MM-dd')
                                                .format(pickedDate);
                                        print(
                                            formattedDate); //formatted date output using intl package =>  2021-03-16
                                        setState(() {
                                          birthdate.text =
                                              formattedDate; //set output date to TextField value.
                                        });
                                      } else {}
                                    },
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
                                      top: 0.0, left: 10.0),
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
                              top: 0.0, left: 10.0, right: 10.0),
                          child: TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              filled: true,
                              //<-- SEE HERE
                              //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                              fillColor: Colors.white,

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
                              top: 0.0, left: 10.0, right: 10.0),
                          child: TextFormField(
                            autofocus: false,
                            decoration: InputDecoration(
                              filled: true,
                              //<-- SEE HERE
                              //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                              fillColor: Colors.white,

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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 10.0),
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
                                      items: _city
                                          .map((value) => DropdownMenuItem(
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.70)),
                                                ),
                                                value: value,
                                              ))
                                          .toList(),
                                      onChanged: (selectedAccountType) {
                                        print('$selectedAccountType');
                                        setState(() {
                                          selectedCity = selectedAccountType;
                                        });
                                      },
                                      value: selectedCity,
                                      isExpanded: false,
                                      hint: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Please Select City',
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
                                      top: 0.0, left: 10.0),
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
                                      top: 0.0, left: 10.0),
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
                                    top: 0.0, left: 10.0, right: 10.0),
                                child: TextFormField(
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    //<-- SEE HERE
                                    //fillColor: Color.fromRGBO(0, 0, 0, 0.10),
                                    fillColor: Colors.white,

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
                                  padding: const EdgeInsets.only(
                                      top: 0.0, left: 10.0),
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
                                      items: _Country.map(
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
                                          selectedCountry = selectedAccountType;
                                        });
                                      },
                                      value: selectedCountry,
                                      isExpanded: false,
                                      hint: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Please Select Country',
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
                                      value: Election_Campaigon,
                                      onChanged: (value) {
                                        print(value);

                                        setState(() {
                                          Election_Campaigon = value!;
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
                                      value: Emergency,
                                      onChanged: (value) {
                                        print(value);

                                        setState(() {
                                          Emergency = value!;
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
                                      value: Medical,
                                      onChanged: (value) {
                                        print(value);

                                        setState(() {
                                          Medical = value!;
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
                                      value: Community_Services,
                                      onChanged: (value) {
                                        print(value);

                                        setState(() {
                                          Community_Services = value!;
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
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      setState(() {
                                        Map<String, dynamic> data = {
                                          "name": nameController.text,
                                          "mobile": mobileController.text,
                                          "email": emailController.text,
                                          "Birth_Date": birthdate.text,
                                          "add1": add1Controller.text,
                                          "add2": add2Controller.text,
                                          "city": selectedCity.toString(),
                                          "state": selectedState.toString(),
                                          "pocode": pocodeController.text,
                                          "country": countryController.text,
                                          "Election_Campaigon":
                                              Election_Campaigon.toString(),
                                          "Emergency": Emergency.toString(),
                                          "Medical": Medical.toString(),
                                          "Community_Services":
                                              Community_Services.toString(),
                                        };

                                        FirebaseFirestore.instance
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
                                      });
                                    }
                                    ;
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
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
