import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_choice/page/articalscreen.dart';
import 'package:v_choice/page/eventscreen.dart';
import 'package:v_choice/page/favScreen.dart';
import 'package:v_choice/page/loginscreen.dart';
import 'package:v_choice/page/Profile.dart';
import 'package:v_choice/page/newsscreen.dart';
import 'package:v_choice/page/profilePage.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    child:( SafeArea(child: Drawer(
      child:Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                margin: const EdgeInsets.all(30),

                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/appstore.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                  ),
                  ),
                  const Text('Roboinfocom Pvt Ltd',
                    style: TextStyle(fontSize: 20,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          ListTile(
            leading: const Icon(Icons.person,color: Colors.black,size: 28,),
            title: const Text('Profile',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
          ),
          const SizedBox(height: 0,),
          ListTile(
            leading: Icon(Icons.article_outlined,color: Colors.black,size: 28,),
            title: Text('Articles',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),),
            onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ArticalScreen()),
        );
            },
          ),
          const SizedBox(height: 0,),

          ListTile(
            leading: Icon(Icons.event,color: Colors.black,size: 28,),
            title: Text('Events',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),),
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventScreen()),
              );
            },
          ),
          const SizedBox(height: 0,),

          ListTile(
            leading: Icon(Icons.newspaper,color: Colors.black,size: 28,),
            title: Text('News',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),),
            onTap:(){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsScreen()),
              );
            },
          ),

          const SizedBox(height: 0,),

          ListTile(
            leading: Icon(Icons.ondemand_video_sharp,color: Colors.black,size: 28,),
            title: Text('Videos',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),),
            onTap:(){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavScreen()),
              );
            },
          ),


          const SizedBox(height: 0,),
          ListTile(
            leading: const Icon(Icons.arrow_back,color: Colors.black,size: 28,),
            title: const Text('Logout',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),),
            onTap: (){
              _showMessageDialog(context);
            },
          ),
        ],
      ),
    ),)
    ),
    );
  }
}

_showMessageDialog(BuildContext context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(

      title: const Text('Are you sure?'),
      content: const Text('Do you want to logout'),
      actions: [
        TextButton(
          child: const Text('Yes'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          }
        )
      ],
    ));
