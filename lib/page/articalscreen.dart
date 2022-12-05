import 'package:flutter/material.dart';
import 'package:v_choice/page/article1.dart';
import 'package:v_choice/page/donationscreen.dart';
import 'package:v_choice/page/mainslider.dart';

class ArticalScreen extends StatefulWidget {
  const ArticalScreen({Key? key}) : super(key: key);

  @override
  State<ArticalScreen> createState() => _ArticalScreenState();
}

class _ArticalScreenState extends State<ArticalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.10),
      // appBar: AppBar(
      //   backgroundColor: Colors.white70,
      //   title: Row(
      //     children: [
      //       Icon(Icons.article_outlined,
      //         color: Colors.deepPurple,
      //         size: 30.0,
      //       ),
      //       const Text(
      //         '               Articles          ',
      //         textAlign: TextAlign.center,
      //         style: TextStyle(color: Colors.black45,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 22.0),
      //       ),
      //     ],
      //   ),
      // ),

      body: ListView(
        children: [
          const SizedBox(
            height: 5,
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => article1()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Container(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  //color: Color.fromRGBO(0, 0, 0, 0.10),
                  color: Colors.white,
                ),
                child: MainSlider(),
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => article1()));
            },
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.0),
                //color: Color.fromRGBO(0, 0, 0, 0.10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/a1.png',
                      height: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RichText(
                      text: TextSpan(
                        text:
                            'PM Modi tops approval ratings among list of 13 global leader ..\n',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'NEW DELHI: Prime Minister Narendra Modi remains the world’s ..........',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Icon(Icons.expand_more_outlined,),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => article1()));
            },
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.0),
                //color: Color.fromRGBO(0, 0, 0, 0.10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/a2.png',
                      height: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RichText(
                      text: TextSpan(
                        text:
                            'India’s dependence on Russian weapons tethers PM Modi to Pre ..\n',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'For all the success of the US-led campaign to isolate Russia ..',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => article1()));
            },
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.0),
                //color: Color.fromRGBO(0, 0, 0, 0.10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/a3.png',
                      height: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RichText(
                      text: TextSpan(
                        text: 'PM Modi Pune Visit Live Updates:\n',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'NPM @narendramodi praying to Sant Tukaram Ji in Pune. The ideals of Sant Tukaram motivate several people. ..........',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 0.0),
          //   child: Container(
          //     padding: const EdgeInsets.all(5),
          //     decoration: const BoxDecoration(color: Colors.white,
          //     ),
          //   ),
          // ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => article1()));
            },
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.0),
                //color: Color.fromRGBO(0, 0, 0, 0.10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/a4.png',
                      height: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RichText(
                      text: TextSpan(
                        text:
                            'PM Modi tops approval ratings among list of 13 global leader ..\n',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'NEW DELHI: Prime Minister Narendra Modi remains the world’s ..........',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 0.0),
          //   child: Container(
          //     padding: const EdgeInsets.all(5),
          //     decoration: const BoxDecoration(color: Colors.white,
          //     ),
          //   ),
          // ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => article1()));
            },
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.0),
                //color: Color.fromRGBO(0, 0, 0, 0.10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/a5.png',
                      height: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RichText(
                      text: TextSpan(
                        text: 'PM Modi Pune Visit Live Updates:.\n',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'PM Modi is followed by Mexico president López Obrador with 66% approval rating. US President Joe Biden is not in the list of the top 5 ...',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 0.0),
          //   child: Container(
          //     padding: const EdgeInsets.all(5),
          //     decoration: const BoxDecoration(color: Colors.white,
          //     ),
          //   ),
          // ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => article1()));
            },
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.0),
                //color: Color.fromRGBO(0, 0, 0, 0.10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/artical4.png',
                      height: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RichText(
                      text: TextSpan(
                        text: 'PM Modi Pune Visit Live Updates:.\n',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'PM Modi is followed by Mexico president López Obrador with 66% approval rating. US President Joe Biden is not in the list of the top 5 ...',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => article1()));
            },
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.0),
                //color: Color.fromRGBO(0, 0, 0, 0.10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/n2.png',
                      height: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: RichText(
                      text: TextSpan(
                        text: 'PM Modi Pune Visit Live Updates:.\n',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'PM Modi is followed by Mexico president López Obrador with 66% approval rating. US President Joe Biden is not in the list of the top 5 ...',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.expand_more_outlined,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
