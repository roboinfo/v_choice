import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:v_choice/page/home.dart';
import 'package:v_choice/page/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   {
    runApp(MyApp());
  };
}

class MyApp extends StatelessWidget {
  static const String title = 'V_Choice';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

        title: "V Choice",
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),
        //home: const MainPage(),
      home: SplashScreen(),
      );


  }
}



