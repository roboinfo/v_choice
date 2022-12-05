import 'package:flutter/material.dart';


class events1 extends StatefulWidget {
  const events1({Key? key}) : super(key: key);

  @override
  State<events1> createState() => _events1State();
}

class _events1State extends State<events1> {
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
              '           Events',
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
                      "assets/ad4.jpg",
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
                          '\n Social Marketing Live | '
                              '\n Social Marketing Mann Ki Baat Live | '
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
                      "assets/ad1.jpg",
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
