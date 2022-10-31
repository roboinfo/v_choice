import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v_choice/page/home2.dart';
import 'package:v_choice/youtube/screens/favScreen.dart';


class Profile extends StatefulWidget {
  Color _iconColor = Colors.white;
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title:
          Row(
            children: [
              Icon(Icons.verified_outlined,
                color: Colors.deepPurple,
                size: 30.0,
              ),
              const Text(
                'Roboinfocom ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            ],
          ),
        ),


        body: ListView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(bottom: 60),
                      // child: ButtonTheme(
                      //   minWidth: 20.0,
                      //   height: 40.0,
                      //   // child: RaisedButton(
                      //   //   color: Colors.white,
                      //   //   onPressed: () {},
                      //   //   splashColor: Colors.grey[200],
                      //   //   child: Icon(
                      //   //     Icons.add_a_photo,
                      //   //     size: 20,
                      //   //   ),
                      //   //   shape: new CircleBorder(),
                      //   // ),
                      // ),
                    ),
                    Column(
                      children: const <Widget>[
                        CircleAvatar(
                          radius: 60.0,
                          backgroundImage: AssetImage("assets/Roboinfocom.png"),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Roboinfocom ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Software company in PCMC',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'contactus@roboinfocom.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 60),
                      // child: ButtonTheme(
                      //   minWidth: 20.0,
                      //   height: 40.0,
                      //   child: RaisedButton(
                      //     color: Colors.white,
                      //     onPressed: () {},
                      //     splashColor: Colors.grey[200],
                      //     child: Icon(
                      //       Icons.edit,
                      //       size: 20,
                      //     ),
                      //     shape: new CircleBorder(),
                      //   ),
                      // ),
                    )
                  ],
                )
            ),
            Padding(padding: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  ElevatedButton(
                    onPressed: (){},
                    child:  const Text('Follow'),
                  ),
                 // SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: (){},
                    child:  const Text('Message'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 10.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        '536',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 17.0),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        '68M',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 17.0),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        '0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 17.0),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/a2.png'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/a3.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/a4.png'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/n1.png'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/n2.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 140),
          ],
        ));
  }
}




