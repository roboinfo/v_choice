import 'dart:async';
import 'package:flutter/material.dart';
import 'package:v_choice/page/loginscreen.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
            () =>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(100)),
            Center(
              child: SizedBox(
                height: 200,
                child: Image.asset("assets/logo.png", width: 200,
                  height: 150,
                  fit: BoxFit.cover,),
              ),
            ),
            const SizedBox(height: 20,),
            const Text('Voters Choice',
              style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),)


          ],
        ),
      ),


    );
  }
}












    // Container(
    //   height: 10,
    //   margin: EdgeInsets.all(10),
    //   padding: EdgeInsets.all(2),
    //   child: Image.asset('assets/appstore.png',
    //     width: 10,
    //     height: 10,
    //     fit: BoxFit.cover,
    //   ),
    //
    // );

  // }
// }

  //
  // @override
  // Widget build(BuildContext context) {
  //   double width = MediaQuery.of(context).size.width;
  //   double height = MediaQuery.of(context).size.height;
  //   return Container(
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //           image: AssetImage('assets/appstore.png'), fit: BoxFit.cover),
  //     ),
  //     child: Stack(
  //       children: <Widget>[
  //         Positioned(
  //           top: 0.0,
  //           left: 0.0,
  //           child: Container(
  //             width: width,
  //             height: height,
  //             decoration: BoxDecoration(
  //               gradient: LinearGradient(
  //                 begin: Alignment.topCenter,
  //                 end: Alignment.bottomCenter,
  //                 stops: [0.1, 0.3, 0.5, 0.7, 0.9],
  //                 colors: [
  //                   Colors.black.withOpacity(0.2),
  //                   Colors.black.withOpacity(0.4),
  //                   Colors.black.withOpacity(0.6),
  //                   Colors.black.withOpacity(0.8),
  //                   Colors.black.withOpacity(1.0),
  //                 ],
  //               ),
  //             ),
  //
  //             child: Scaffold(
  //               backgroundColor: Colors.transparent,
  //               body: Padding(
  //                 padding: EdgeInsets.all(8.0),
  //                 child: Center(
  //                   child: Text(
  //                     'Roboinfocom pvt Ltd',
  //
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }



