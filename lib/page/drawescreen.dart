import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:v_choice/page/articalscreen.dart';
import 'package:v_choice/page/bottomseach.dart';
import 'package:v_choice/page/eventscreen.dart';
import 'package:v_choice/page/notifications.dart';
import 'package:v_choice/page/splashscreen.dart';
import 'package:v_choice/youtube/screens/favScreen.dart';
import 'package:v_choice/page/loginscreen.dart';
import 'package:v_choice/page/Profile.dart';
import 'package:v_choice/page/newsscreen.dart';
import 'package:v_choice/page/profilePage.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  int index = 0;
  final storage = new FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (SafeArea(
        child: Drawer(
          //backgroundColor: Colors.orange,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                color: Colors.deepPurple,
                //color: Theme.of(context).primaryColor,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.all(30),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/appstore.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Text(
                        'Roboinfocom Pvt Ltd',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 28,
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              const SizedBox(
                height: 0,
              ),
              ListTile(
                leading: Icon(
                  Icons.ondemand_video_sharp,
                  color: Colors.black,
                  size: 28,
                ),
                title: Text(
                  'Videos',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavScreen()),
                  );
                },
              ),
              const SizedBox(
                height: 0,
              ),
              ListTile(
                leading: Icon(
                  Icons.article_outlined,
                  color: Colors.black,
                  size: 28,
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifications()),
                  );
                },
              ),
              const SizedBox(
                height: 0,
              ),
              ListTile(
                leading: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 28,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  _showMessageDialog(context);
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
final storage = new FlutterSecureStorage();
void _showMessageDialog(BuildContext context) => showDialog(

    context: context,
    builder: (context) => AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('Do you want to logout'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              //return false when click on "NO"
              child: Text('No'),
            ),

            ElevatedButton(
              onPressed: () async => {
                await FirebaseAuth.instance.signOut(),
                await storage.delete(key: "uid"),
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                        (route) => false)
              },
              child: Text('Yes'),

            )
          ],
        ));
