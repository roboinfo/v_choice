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
    Future<bool> showExitPopup() async {
      return await showDialog( //show confirm dialogue 
        //the return value will be from "Yes" or "No" options
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Exit App'),
          content: Text('Do you want to exit an App?'),
          actions:[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              //return false when click on "NO"
              child:Text('No'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              //return true when click on "Yes"
              child:Text('Yes'),
            ),

          ],
        ),
      )??false; //if showDialouge had returned null, then return false
    }
    return WillPopScope(
      onWillPop: showExitPopup,
      child: DefaultTabController(
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
                      showExitPopup();
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
      ),
    );
  }
}