import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:v_choice/page/home.dart';
import 'package:v_choice/page/home2.dart';
import 'package:v_choice/page/loginscreen.dart';
import 'package:v_choice/page/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   {
     WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp();
     runApp(MyApp());
  };
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final storage = new FlutterSecureStorage();

  Future<bool> checkLoginStatus() async{
    String? value = await storage.read(key: "uid");
    if (value == null){
      return false;
    }
    return true;
  }

  static const String title = 'V_Choice';

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

        title: "V Choice",
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),
        //home: const MainPage(),
      //home: SplashScreen(),
      home: FutureBuilder(
        future: checkLoginStatus(),
        builder:(BuildContext context,AsyncSnapshot<bool> snapshot ){
          if (snapshot.data == false){
            return SplashScreen();
          }
          if(snapshot.connectionState == ConnectionState.waiting){
            return Container(color: Colors.white,child: Center(child: CircularProgressIndicator()));
          }
          return home2();
        },

      )
      );


  }
}



