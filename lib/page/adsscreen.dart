import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_choice/page/adsSlider.dart';

void main() {
  runApp(AdsScreen());
}

class AdsScreen extends StatefulWidget {
  const AdsScreen({key}) : super(key: key);

  @override
  _AdsScreenState createState() => _AdsScreenState();
}

class _AdsScreenState extends State<AdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Row(
          children: [
            Icon(
              Icons.ads_click_outlined,
              color: Colors.deepPurple,
              size: 30.0,
            ),
            const Text(
              '                Advertisment',
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
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      color: Color.fromRGBO(0, 0, 0, 0.10),
                    ),
                    child: adsSlider(),
                  ),
                ),
                const SizedBox(
                  height: 5,
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
                              Icons.production_quantity_limits_rounded,
                              color: Colors.deepPurple,
                              size: 30.0,
                            ),
                            Text(
                              '                 Products List',
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


                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 0.0, right: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5),
                            child: Column(
                              children: [
                                //Picture
                                Image.asset(
                                  'assets/pr1.jpg',
                                  height: 150.0,
                                ),
                                //rating out of 5
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text('5'),
                                  ],
                                ),
                                //Product Name
                                const Text('Product Title')
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0, left: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5),
                            child: Column(
                              children: [
                                //Picture
                                Image.asset(
                                  'assets/pr2.jpg',
                                  height: 150.0,
                                ),
                                //rating out of 5
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text('5'),
                                  ],
                                ),
                                //Product Name
                                const Text('Product Title')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 0.0, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5),
                            child: Column(
                              children: [
                                //Picture
                                Image.asset(
                                  'assets/pr3.jpg',
                                  height: 150.0,
                                ),
                                //rating out of 5
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text('5'),
                                  ],
                                ),
                                //Product Name
                                const Text('Product Title')
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 0.0, right: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5),
                            child: Column(
                              children: [
                                //Picture
                                Image.asset(
                                  'assets/pr4.jpg',
                                  height: 150.0,
                                ),
                                //rating out of 5
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text('5'),
                                  ],
                                ),
                                //Product Name
                                const Text('Product Title')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 0.0, left: 20.0, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(0, 0, 0, 0.10),
                    ),
                    padding:
                        const EdgeInsets.only(top: 5.0, left: 10.0, right: 10),
                    child: Column(
                      children: [
                        //Picture
                        Image.asset(
                          'assets/pr9.jpg',
                          height: 150.0,
                        ),
                        //rating out of 5
                        Row(
                          children: const <Widget>[
                            Icon(
                              Icons.star,
                            ),
                            Text(
                              '5',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        //Product Name
                        const Text('Product Title')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 0.0, right: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5),
                            child: Column(
                              children: [
                                //Picture
                                Image.asset(
                                  'assets/pr5.jpg',
                                  height: 150.0,
                                ),
                                //rating out of 5
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text('5'),
                                  ],
                                ),
                                //Product Name
                                const Text('Product Title')
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0, left: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5),
                            child: Column(
                              children: [
                                //Picture
                                Image.asset(
                                  'assets/pr6.jpg',
                                  height: 150.0,
                                ),
                                //rating out of 5
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text('5'),
                                  ],
                                ),
                                //Product Name
                                const Text('Product Title')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 0.0, right: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5),
                            //  color: Colors.lightBlueAccent,
                            child: Column(
                              children: [
                                //Picture
                                Image.asset(
                                  'assets/pr7.jpg',
                                  height: 150.0,
                                ),
                                //rating out of 5
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text('5'),
                                  ],
                                ),
                                //Product Name
                                const Text('Product Title')
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0, left: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromRGBO(0, 0, 0, 0.10),
                            ),
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5),
                            child: Column(
                              children: [
                                //Picture
                                Image.asset(
                                  'assets/pr8.jpg',
                                  height: 150.0,
                                ),
                                //rating out of 5
                                Row(
                                  children: const [
                                    Icon(Icons.star),
                                    Text('5'),
                                  ],
                                ),
                                //Product Name
                                const Text('Product Title')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 0.0, left: 20.0, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(0, 0, 0, 0.10),
                    ),
                    padding:
                        const EdgeInsets.only(top: 5.0, left: 10.0, right: 10),
                    child: Column(
                      children: [
                        //Picture
                        Image.asset(
                          'assets/pr9.jpg',
                          height: 150.0,
                        ),
                        //rating out of 5
                        Row(
                          children: const <Widget>[
                            Icon(
                              Icons.star,
                            ),
                            Text(
                              '5',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        //Product Name
                        const Text('Product Title')
                      ],
                    ),
                  ),
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
}
