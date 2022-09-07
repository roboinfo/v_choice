import 'package:flutter/material.dart';

class StoryCircle4 extends StatelessWidget {
  final String text;
  const StoryCircle4({Key? key,   required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:     Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/a3.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
              color: Colors.blue,
            ),

          ),

          const SizedBox(height: 5,),
          // Text('your story',style: TextStyle(
          //   color: Colors.blue,
          //   fontWeight: FontWeight.bold
          // ),)
        ],

      ),


    );
  }
}
