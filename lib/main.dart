import 'dart:math';

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
    return  SafeArea(
      child: const  MaterialApp(
          home:  Column(
              children:  [
              Flexible(child: MyProfile(),flex:1,),
               Flexible(child: MyPosts(),flex:2, ),
            
                
              ],
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
                 size: 25,
                 color: Colors.white,
                 ),
                Icon(
                  Icons.settings,
                  size: 25,
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
                Text('John Blayne', style: TextStyle(color:Colors.white, fontSize: 16) ,),
                SizedBox(height: 10,),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      
                     children: [
                        Icon(Icons.people, size: 16,color: Colors.grey),
                         SizedBox(width: 5,),
                        Text("600 Followers", style: TextStyle(color:Colors.white, fontSize: 12) ,),
                      
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

class _MyPostsState extends State<MyPosts> {

  final List<String> _listItem = [
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/six.jpg',
    'assets/one.jpg',
    'assets/two.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: double.infinity,
            color: Colors.grey.shade900,
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(vertical:30, horizontal: 35),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: _listItem.map((item) => Card(
                color:Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(item),
                      fit:BoxFit.cover
                    ),
                  ) ,
                ) ,
              )).toList(),
              ),
              
              );
      
  }
}