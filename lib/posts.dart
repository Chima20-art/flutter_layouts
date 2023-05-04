import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:get/get.dart';

class MyPosts extends StatefulWidget {
  const MyPosts({super.key});

  @override
  State<MyPosts> createState() => _MyPostsState();
}

class AppPost{

}

class _MyPostsState extends State<MyPosts> {

  final List<Map<String, String>> _listItem = [
   { 'image':'assets/one.jpg','views':'1.5k','likes':'229'},
    { 'image':'assets/two.jpg','views':'2.5k','likes':'259'},
     { 'image':'assets/three.jpg','views':'14.5k','likes':'229'},
      { 'image':'assets/four.jpg','views':'13.5k','likes':'259'},
       { 'image':'assets/five.jpg','views':'18.5k','likes':'259'},
        { 'image':'assets/six.jpg','views':'11.5k','likes':'229'},
         { 'image':'assets/one.jpg','views':'10.5k','likes':'229'},
          { 'image':'assets/two.jpg','views':'15.5k','likes':'259'},
  ] ;

  @override
  Widget build(BuildContext context) {
    debugPrint(_listItem.toString());
    return   Container(
            height: double.infinity,
            color: Colors.black,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(vertical:30, horizontal: 30),
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: (1 / 1.17),
              children: _listItem.map((item) => Card(
              color:  Colors.transparent,
                child:  Column(
                  children: [
                    Expanded(
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(item['image'] ?? "",fit: BoxFit.cover, height: 100.0,),
                    ),
                ),
                  const SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(item['views']!,style: TextStyle(color: Colors.white),),
                          const SizedBox(width: 5,),
                          const  Icon(Icons.remove_red_eye, color: Colors.white, size: 13,)
                        ],
                      ),
                        Row(
                        children: [
                          Text(item['likes']!,style: TextStyle(color: Colors.white),),
                          const SizedBox(width: 5,),
                          const Icon(Icons.heart_broken_rounded, color: Colors.white, size: 13,)
                        ],
                      ),
                    ],
                  ),
                  ],
                ),
              )).toList(),
              ),
              
              );
      
  }
}


// class _MyPostsState extends State<MyPosts> {

//   final Future<List<dynamic>?> _listItem = [
//    { 'image':'assets/one.jpg','views':'1.5k','likes':'229'},
//     { 'image':'assets/two.jpg','views':'1.5k','likes':'229'},
//      { 'image':'assets/three.jpg','views':'1.5k','likes':'229'},
//       { 'image':'assets/four.jpg','views':'1.5k','likes':'229'},
//        { 'image':'assets/five.jpg','views':'1.5k','likes':'229'},
//         { 'image':'assets/six.jpg','views':'1.5k','likes':'229'},
//          { 'image':'assets/one.jpg','views':'1.5k','likes':'229'},
//           { 'image':'assets/two.jpg','views':'1.5k','likes':'229'},
//   ] 

//   @override
//   Widget build(BuildContext context) {
//     debugPrint(_listItem.toString());
//     return   Container(
//             height: double.infinity,
//             color: Colors.black,
//             child: GridView.count(
//               crossAxisCount: 2,
//               padding: const EdgeInsets.symmetric(vertical:30, horizontal: 30),
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 15,
//               childAspectRatio: (1 / 1.17),
//               children: <Widget>[
//                  FutureBuilder(
//                   future: _listItem,
//                   builder: (context, snapshot) {
//                     return
//                             Card(
//                 color:  Colors.transparent,
//                 child:  Column(
//                   children: [
//                     Expanded(
//                     child: ClipRRect(
//                     borderRadius: BorderRadius.circular(15),
//                     child: Image.asset('assets/one.jpg',fit: BoxFit.cover, height: 100.0,),
//                     ),
//                 ),
//                   const SizedBox(height: 10,),
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Text("1.5K",style: TextStyle(color: Colors.white),),
//                           SizedBox(width: 5,),
//                           Icon(Icons.remove_red_eye, color: Colors.white, size: 13,)
//                         ],
//                       ),
//                         Row(
//                         children: [
//                           Text("229 likes",style: TextStyle(color: Colors.white),),
//                           SizedBox(width: 5,),
//                           Icon(Icons.heart_broken_rounded, color: Colors.white, size: 13,)
//                         ],
//                       ),
//                     ],
//                   ),
//                   ],
//                 ),
//               );
//                   }
//                  )
//                  ]
// //               ),
              
// //               );
      
// //   }
// // }