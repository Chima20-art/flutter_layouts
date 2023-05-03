import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    SafeArea(
      child:   MaterialApp(
          home:  Scaffold(
            body: const Column(
                children:  [
                Flexible(flex:2, child: MyProfile(),),
                 Flexible(flex:5, child: MyPosts(), ),
                ],
            ),
              bottomNavigationBar:   BottomNavigationBar(
                backgroundColor: Colors.white.withOpacity(0.2),
            items:const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 35, color:Colors.white),
                 label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline_outlined, size: 35, color:Colors.white),
                 label:  '',
               
              ),
                  BottomNavigationBarItem(
                icon: Icon(Icons.save_alt_rounded, size: 35, color: Colors.white,),
                 label: '',
               
              ),
              // add your third icon here
            ],
           
          ),
            
          ),
        ),
      
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.ltr, 
    child: Wrap( 

      children: [ 
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                decoration: const BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage("assets/shot.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height:220,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),    
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),

                    ),
                  ),
                ),
              ),
              const SizedBox(
                width:double.infinity,
                height: 220,
                child: Column(
                  children: [
                     ProfileInfo(),
                  ],
                ),
              ),
            
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                 Icons.arrow_back, 
                 size: 27,
                 color: Colors.white,
                 ),
                Icon(
                  Icons.settings,
                  size: 27,
                  color: Colors.white,
                ),
              ],
            ),
             SizedBox(height: 10,),

            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius:43,
                  backgroundImage: AssetImage("assets/profilepic.jpg"),
                ),
                SizedBox(height: 10,),
                Text("John Blayne", style: TextStyle(color:Colors.white, fontSize: 16)),
                SizedBox(height: 10,),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      
                     children: [
                        Icon(Icons.people, size: 16,color: Colors.grey),
                         SizedBox(width: 5,),
                        Text("600 Followers", style: TextStyle(color:Colors.white, fontSize: 12)),
                      
                      ],
                    
                     ),
                  SizedBox(
                    height: 18,
                    child: VerticalDivider(
                        thickness: 1,
                        width: 40,
                        color: Colors.grey,
                    ),
                  ),                   
                    Row(
                      children: [
                        Icon(Icons.people, size: 16,color: Colors.grey),
                         SizedBox(width: 5,),
                        Text("150 Following", style: TextStyle(color:Colors.white, fontSize: 12) ,),
                      
                      ],
                    
                     ),

                  ],
                ),
              ],

            ),

          ],
        ),);
     
  }
}

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