import 'package:flutter/material.dart';
import 'package:v_choice/youtube/screens/favScreen.dart';
import 'bottomseach.dart';
import 'Messages.dart';
import 'home.dart';
import 'Profile.dart';



class home2 extends StatelessWidget {

  static const String title = 'AppBar';

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: true,
    title: 'Voter\'s Choice',
    // theme: ThemeData(
    //   primaryColor: Colors.purple,
    // ),
    home: MainPage(),
  );
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();

}
class _MainPageState extends State<MainPage> {

  int index = 0;
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
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      ),
    );
  }
  Widget buildBottomBar() {
    const style = TextStyle(color: Colors.white);
    return BottomNavigationBar(


      selectedItemColor: Colors.blueAccent,

      unselectedItemColor: Colors.black,
      backgroundColor: Colors.lightBlueAccent,
      currentIndex: index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_collection),
          label: 'News Videos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Massages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more),
          label: 'More',
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }
  Widget buildPages() {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const BSearch();
      case 2:
        return FavScreen();
      case 3:
        return const Chats();
      case 4:
        return Profile();
      default:
        return Container();
    }
  }
}





