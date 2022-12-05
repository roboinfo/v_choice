import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:v_choice/page/adsscreen.dart';
import 'package:v_choice/page/articalscreen.dart';
import 'package:v_choice/page/donationscreen2.dart';
import 'package:v_choice/page/drawescreen.dart';
import 'package:v_choice/page/eventscreen.dart';
import 'package:v_choice/page/loginscreen.dart';
import 'package:v_choice/page/registration.dart';
import 'package:v_choice/page/splashscreen.dart';
import 'donationscreen.dart';
import 'donationscreen2.dart';
import 'package:flutter/services.dart';
import 'newsscreen.dart';
import 'notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  {
    runApp(Home());
  };
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

      },
      child: MaterialApp(
        title: 'Voter\'s Choice',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  final storage = new FlutterSecureStorage();


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 7,
      child: Scaffold(

          appBar: AppBar(
            title: const Text('Voter\'s Choice'),

            // //AppBar Image
            // flexibleSpace: Image(
            //   image: AssetImage('assets/galaxy.png'),
            //   fit: BoxFit.cover,
            // ),

            backgroundColor: Colors.deepPurple,
            // bottom:TabBar(),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_none),
                onPressed: () {
                  Navigator.push(context, PageTransition(
                      type: PageTransitionType.leftToRightWithFade,
                      child: Notifications())
                  );
                },
              ),

            ],

          ),

          drawer: const DrawerScreen(),

          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                      //color: Colors.grey[300],
                     // borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.blue[300],
                      //  borderRadius: BorderRadius.circular(25.0)
                    ),

                    isScrollable: true,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.white,

                    tabs: const [
                      Tab(text: 'Articles',),
                      Tab(text: 'Events'),
                      Tab(text: 'RoboInfoCom'),
                      Tab(text: 'Advertisement'),
                      Tab(text: 'Donation'),
                      Tab(text: 'Private Donation'),
                      Tab(text: 'Registration'),

                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                      children: [
                        const ArticalScreen(),
                        const EventScreen(),
                        const NewsScreen(),
                        AdsScreen(),
                        DonationScreen(),
                        DonationScreen2(),
                        Volunteer(),


                        // Center(child: Text('Settings Page'),)
                      ],
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}

