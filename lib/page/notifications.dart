import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title:const Text("Notification ")
      ),
      body:   SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 100,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(02),
                    color: Colors.black12,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.10),

                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text('1]. Prime Minister Narendra Modi will be '
                        '         Live At 11.30pm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                    ),),
                  ),
                  // color: Colors.blue,
                ),
            ),
            

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(02),
                  color: Colors.black12,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.10),

                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text('2].Prime Minister Narendra Modi will be '
                      '         Live At 05.30pm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                ),
                // color: Colors.blue,
              ),
            ),

          ],
        ),

      ),
    );
  }
}