import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class adsSlider extends StatefulWidget {
  const adsSlider({Key? key}) : super(key: key);

  @override
  _MainSliderState createState() => _MainSliderState();
}

class _MainSliderState extends State<adsSlider> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(bottom: 0.0),
      child: Column(
        children: <Widget>[
          CarouselSlider(
            items: [
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.fade, child: VideoPage()));
                },
                child: Container(
                  width: width,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/ad1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.fade, child: VideoPage()));
                },
                child: Container(
                  width: width,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/ad4.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.fade, child: VideoPage()));
                },
                child: Container(
                  width: width,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/ad3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.fade, child: VideoPage()));
                },
                child: Container(
                  width: width,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/ad2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: (height / 4.1),
              enlargeCenterPage: false,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayInterval: const Duration(seconds: 6),
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
