import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_layouts/pages/home/main.dart';
import 'package:flutter_layouts/pages/profile/widgets/posts.dart';

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
                    image: AssetImage("assets/images/shot.jpg"),
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
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                     
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
  
                  },
                  child: const  Icon(
                   Icons.arrow_back, 
                   size: 27,
                   color: Colors.white,
                   ),
                )  ,
               const Icon(
                  Icons.settings,
                  size: 27,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10,),

           const Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius:43,
                  backgroundImage: AssetImage("assets/images/profilepic.jpg"),
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