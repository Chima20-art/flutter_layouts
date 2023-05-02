import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Column(
        children:  [
          MyProfile(),
          MyPosts(),
        ],
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.ltr, 
    child: Column( 
      mainAxisAlignment: MainAxisAlignment.start,
      children: [ 
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage("assets/shot.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
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
              Container(
                width:double.infinity,
                height:300,
                child: const Column(
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
            SizedBox(height: 20,),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius:58,
                  backgroundImage: NetworkImage("assets/profilepic.jpg"),
                ),
                SizedBox(height: 20,),
                Text('John Blayne', style: TextStyle(color:Colors.white, fontSize: 18) ,),
                SizedBox(height: 20,),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      
                     children: [
                        Icon(Icons.people, size: 20,color: Colors.grey),
                         SizedBox(width: 5,),
                        Text("600 Followers", style: TextStyle(color:Colors.white) ,),
                      
                      ],
                    
                     ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                        thickness: 1,
                        width: 40,
                        color: Colors.grey,
                    ),
                  ),                     Row(
                      children: [
                        Icon(Icons.people, size: 20,color: Colors.grey),
                         SizedBox(width: 5,),
                        Text("150 Following", style: TextStyle(color:Colors.white) ,),
                      
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

class MyPosts extends StatelessWidget {
  const MyPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        
        home:  Scaffold(
        //Here you can set what ever background color you need.
          backgroundColor: Colors.black,
        ),
      );
  }
}