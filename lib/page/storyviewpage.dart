import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:v_choice/page/eventscreen.dart';

class StoryViewPage extends StatefulWidget {
  const StoryViewPage({Key? key}) : super(key: key);

  @override
  State<StoryViewPage> createState() => _StoryViewPageState();
}

class _StoryViewPageState extends State<StoryViewPage> {
  final controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return Material(




      child: StoryView(
        onComplete: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const EventScreen()));
        },
        onVerticalSwipeComplete:  (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        },

        storyItems: [
          StoryItem.text(title: 'Prime Minister to lay foundation stone of projects worth Rs 21,'
              '000 cr in India Prime Minister will visit Gujarat on June 17 and 18 '
              'where he will inaugurate and lay foundation stone of development projects worth Rs 21,000 crores,At around '
              '9:15 AM on 18th June, the Prime Minister will visit and inaugurate the redeveloped '
              'temple of Shree Kalika Mata at Pavagadh Hill, which will be followed by his visit to '
              'Virasat Van at around 11:30 AM, according to a release by the '
              'Prime Ministers Office (PMO)',
            textStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            backgroundColor: Colors.black,),

          // StoryItem.text(title: ' ',textStyle: TextStyle(
          //   fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
          // ),
          //    backgroundColor: Colors.grey),

          StoryItem.pageImage(url: 'https://static.vecteezy.com/system/resources/thumbnails/'
              '009/951/832/small/politician-cartoon-hand-drawn-illustration-with-election-and-'
              'democratic-governance-ideas-participate-in-political-debates-in-front-of-audience-vector.jpg',
              caption: "Politician Paries ...tour",
              controller: controller),

          StoryItem.pageImage(url: 'https://us.123rf.com/450wm/sentavio/sentavio1511/sentavio151100274/'
              '48576384-democracy-politics-system-concept-flat-3d-web-isometric-infographic-politic-tribune-over'
              '-abyss-elect.jpg?ver=6',
              caption: "Prime Minister will address the nation at 10 am today, the PMO informed via a post on social media platform Twitter. "
                  "His address comes just a day after India achieved the remarkable ...",
              controller: controller),

        StoryItem.pageImage(url: 'https://us.123rf.com/450wm/bolsunova/bolsunova1903/'
            'bolsunova190300186/124230228-vector-illustration-man-speaker-silhouette-speech-politics-'
            'preaching-presentation-political-party-le.jpg?ver=6',
          caption: "Had a good interaction with Foreign Ministers and Representatives of @ASEAN"
              " countries as we celebrate"
              " 30 years of close India-ASEAN cooperation..",
          controller: controller)
  ],
          controller: controller,
          inline: false,
        repeat: true,

      ),
    );

  }
}

