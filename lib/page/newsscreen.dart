// import 'package:flutter/material.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:v_choice/page/home2.dart';
//
// class NewsScreen extends StatefulWidget {
//   const NewsScreen({key}) : super(key: key);
//
//   @override
//   _NewsScreenState createState() => _NewsScreenState();
// }
//
// class _NewsScreenState extends State<NewsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//
//       appBar: AppBar(
//         backgroundColor: Colors.white70,
//         title: Row(
//           children: [
//             Icon(Icons.newspaper,
//               color: Colors.deepPurple,
//               size: 30.0,
//             ),
//             const Text(
//               '                     News',
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.black45,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 22.0),
//             ),
//           ],
//         ),
//       ),
//
//
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Center(
//             child: Column(
//               children: [
//
//
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 0.0),
//                   child: Container(
//                     padding: const EdgeInsets.all(5),
//                     decoration: const BoxDecoration(color: Colors.white,
//                     ),
//                   ),
//                 ),
//
//                 const SizedBox(height: 5,),
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 0.0),
//                   child: Container(
//                     padding: const EdgeInsets.all(3),
//                     decoration: const BoxDecoration(color: Colors.black,
//                     ),
//                   ),
//                 ),
//
//                 const SizedBox(height: 5,),
//
//                 Row(
//                   children: const<Widget> [
//                   Flexible(
//                     flex: 1,
//                     fit: FlexFit.tight,
//                     child:
//                     Text('\t PM extends best wishes to Barak Obama '
//                         '\n \t for quick recovery from Covid-19 '
//                         '\n \n \t   March 14th, 2022 ',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.black45,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17.0),
//                     ),
//                   ),
//               ],
//             ),
//
//
//                 Container(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: Image.asset("assets/q2.png",
//                     // height: 250,
//                     width: double.infinity,
//                   ),
//                 ),
//
//           Row(
//             children: const<Widget> [
//               Flexible(
//                 flex: 1,
//                 fit: FlexFit.tight,
//                 child:
//                     Text(
//
//                       '\n  \t The Prime Minister, '
//                           ' \n  Shri Narendra Modi has '
//                           '\n \t \t  extended his best wishes to former US'
//                           '\n  \t Precident, Barak Obama for his quick recovery '
//                           '\n \t \t from Covid-19. ',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.black45,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17.0),
//                     ),
//               ),
//             ],
//           ),
//
//                 const SizedBox(height: 5,),
//
//                 Row(
//                   children:<Widget> [
//
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.tight,
//                       child: Container(
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.only(top: 0.0, left: 2.0),
//                         child: ElevatedButton.icon(
//                       icon: const Icon(
//                         Icons.favorite,
//                         color: Colors.redAccent,
//                         size: 30.0,
//                       ),
//
//                       label: const Text(
//                         "Like",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white),
//                       ),
//
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ), onPressed: () {  },
//                     ),
//                     ),
//                     ),
//
//           Flexible(
//             flex: 1,
//             fit: FlexFit.tight,
//             child: Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.only(top: 0.0, left: 2.0),
//               child: ElevatedButton.icon(
//                 icon: const Icon(
//                   Icons.comment,
//                   color: Colors.purple,
//                   size: 30.0,
//                 ),
//
//                 label: const Text(
//                   "Comment",
//                   style: TextStyle(
//                       fontSize: 12,
//                       color: Colors.white),
//                 ),
//
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//
//                 ), onPressed: () {  },
//               ),
//             ),
//           ),
//
//           Flexible(
//             flex: 1,
//             fit: FlexFit.tight,
//             child: Container(
//               alignment: Alignment.center,
//               padding: const EdgeInsets.only(top: 0.0, left: 2.0),
//               child:ElevatedButton.icon(
//
//                 icon: const Icon(
//                   Icons.share,
//                   color: Colors.white,
//                   size: 30.0,
//                 ),
//
//                 onPressed: () async{
//                   await Share.share('Share');
//                 },
//
//                 label: const Text(
//                   "Share",
//                   style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.white),
//                 ),
//
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//
//                 ),
//               ),
//             ),
//           ),
//
//                       ],
//                     ),
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 0.0),
//                   child: Container(
//                     padding: const EdgeInsets.all(3),
//                     decoration: const BoxDecoration(color: Colors.black,
//                     ),
//                   ),
//                 ),
//
//
//                 const SizedBox(height: 25,),
//
//                 Row(
//                   children: const <Widget>[
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.tight,
//                       child:
//                     Text('\t Uddhav Thackeray takes away portfolios '
//                         '\n \t of rebel ministers, reallocates them '
//                         '\n \n \t June 27th, 2022 ',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(color: Colors.black45,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17.0),
//                     ),
//                     ),
//                   ],
//                 ),
//
//                 Container(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: Image.asset("assets/udhav.png",
//                     // height: 250,
//                     width: double.infinity,
//                   ),
//                 ),
//
//                 Row(
//                   children: const  <Widget>[
//
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.tight,
//
//                       child:
//                     Text(
//                       '\n  Maharashtra Chief Minister Uddhav'
//                           '\n Thackeray who is facing a rebellion, '
//                           '\n within his party Monday took away,'
//                           '\n the portfolios of rebel ministers  '
//                           '\n camping in Assam’s Guwahati and'
//                           '\n allocated them to other cabinet colleagues. ',
//                       textAlign: TextAlign.center,
//
//                       style: TextStyle(color: Colors.black45,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 17.0),
//                     ),
//                     ),
//                   ],
//                 ),
//
//
//                 const SizedBox(height: 5,),
//
//                 Row(
//                   children:<Widget> [
//
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.tight,
//                       child: Container(
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.only(top: 0.0, left: 2.0),
//                         child: ElevatedButton.icon(
//                           icon: const Icon(
//                             Icons.favorite,
//                             color: Colors.redAccent,
//                             size: 30.0,
//                           ),
//
//                           label: const Text(
//                             "Like",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.white),
//                           ),
//
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.blue,
//
//                           ), onPressed: () {  },
//                         ),
//                       ),
//                     ),
//
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.tight,
//                       child: Container(
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.only(top: 0.0, left: 2.0),
//                         child: ElevatedButton.icon(
//                           icon: const Icon(
//                             Icons.comment,
//                             color: Colors.purple,
//                             size: 30.0,
//                           ),
//
//                           label: const Text(
//                             "Comment",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 color: Colors.white),
//                           ),
//
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.blue,
//
//                           ), onPressed: () {  },
//                         ),
//                       ),
//                     ),
//
//                     Flexible(
//                       flex: 1,
//                       fit: FlexFit.tight,
//                       child: Container(
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.only(top: 0.0, left: 2.0),
//                         child:ElevatedButton.icon(
//
//                           icon: const Icon(
//                             Icons.share,
//                             color: Colors.white,
//                             size: 30.0,
//                           ),
//
//                           onPressed: () async{
//                             await Share.share('Share');
//                           },
//
//                           label: const Text(
//                             "Share",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.white),
//                           ),
//
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.blue,
//
//                           ),
//                         ),
//                       ),
//                     ),
//
//                   ],
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 0.0),
//                   child: Container(
//                     padding: const EdgeInsets.all(3),
//                     decoration: const BoxDecoration(color: Colors.black,
//                     ),
//                   ),
//                 ),
//
//
//                 const SizedBox(height: 5,),
//
//
//               ],
//
//             ),
//           ),
//         ),
//       ),
//
//
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  late InAppWebViewController webView;
  double _progress =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse("http://roboinfocom.com/")),
            onWebViewCreated: (InAppWebViewController controller){
              webView = controller;
            },
            onLoadStart: (controller, uri){

            },
            onProgressChanged: (InAppWebViewController controller, int progress){
              setState(() {
                _progress = progress / 100;
              });
            },
          ),
          _progress < 1 ? SizedBox(height: 3, child: LinearProgressIndicator(
            value: _progress,
            backgroundColor: Colors.blue.withOpacity(0.2),
          ),) : const SizedBox(),
        ],
      ),
    );
  }
}
