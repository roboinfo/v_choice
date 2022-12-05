import 'package:flutter/material.dart';


class article1 extends StatefulWidget {
  const article1({Key? key}) : super(key: key);

  @override
  State<article1> createState() => _article1State();
}

class _article1State extends State<article1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.10),

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: [
            Icon(Icons.event,
              color: Colors.deepPurple,
              size: 30.0,
            ),
            const Text(
              '           Articles',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0),
            ),
          ],
        ),
      ),

      extendBody: true,

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(
              height: 5,
            ),

            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Image.asset(
                      "assets/q2.png",
                      // height: 250,
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: const <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Text(
                          '\n Voting Result Live | '
                              '\n PM Modis Mann Ki Baat Live | '
                              '\n Narendra Modis Address To The Nation |',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            const SizedBox(
              height: 5,
            ),

            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Image.asset(
                      "assets/artical5.png",
                      // height: 250,
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: const <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Text(
                          '\nElections 2022: '
                              '\nAssembly Election 2022 Dates, |'
                              '\nResults, Opinion polls, | '
                              '\nExit polls and News | '
                              '\nTimes of India | ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            const SizedBox(
              height: 5,
            ),
        ],
        ),
      ),
    );
  }
}
