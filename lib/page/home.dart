import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:v_choice/page/adsscreen.dart';
import 'package:v_choice/page/articalscreen.dart';
import 'package:v_choice/page/donationscreen2.dart';
import 'package:v_choice/page/drawescreen.dart';
import 'package:v_choice/page/eventscreen.dart';
import 'package:v_choice/page/loginscreen.dart';
import 'package:v_choice/page/registration.dart';
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




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Voter\'s Choice'),
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
              IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed:(){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          scrollable: true,
                          backgroundColor: Colors.grey,
                          // clipBehavior: Clip.antiAlias,

                          title: const Text("Sure To Logout "),
                          //content: ListView(),
                          actions: [
                            ElevatedButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()));
                            }, child: const Text("Logout")),
                            ElevatedButton(onPressed: () {
                              Navigator.pop(context);
                            }, child: const Text("Cancel")),
                          ],
                        );
                      },
                    );
                    // _bottomSheet(context);
                  }
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                //_showMessageDialog(context);

              ),
            ],

          ),

          drawer: const DrawerScreen(),

          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(25.0)
                    ),

                    isScrollable: true,
                    unselectedLabelColor: Colors.black,
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