import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:get/get.dart';
import 'myprofile.dart';
import 'posts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'glassmorphism.dart';
import 'package:flutter/services.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return     SafeArea(
      child:   MaterialApp(
        debugShowCheckedModeBanner: false,
          home: Stack(
            children: [
                Column(
                children:  [
                const Flexible(flex:3, child: MyProfile(),),
                 const Flexible(flex:5, child: MyPosts(), ),
                
                     Container(
                      color: Colors.transparent,
                       child: Glassmorphism(
                        blur: 15,
                        child: GNav(
                                     color: Colors.white,
                                     activeColor: Colors.white,
                                     backgroundColor: Colors.transparent,
                                     tabBackgroundColor: Colors.grey.shade800,
                                     gap:8,
                                     tabs:const [
                                       GButton(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        icon: Icons.home,
                        text:'Home'
                        ),
                        GButton(
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        icon: Icons.add_circle_outline_rounded,
                        text:'Add'
                        ),
                        GButton(
                         padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        icon: Icons.favorite_border,
                        text:'favorites'
                        ),
                                     ],),
                                       ),
                     ),
                ],
            ),
            ],
          ),
          ),
        );
  }
}