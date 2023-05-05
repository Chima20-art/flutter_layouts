import 'package:flutter/material.dart';
import 'widgets/myprofile.dart';
import 'widgets/posts.dart';
import '../widgets/navigation_bar.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
    return  const   SafeArea(
      child:   MaterialApp(
        debugShowCheckedModeBanner: false,
          home: Scaffold(

            body: 
                 SingleChildScrollView(
                   child: Column(
                    children:  [        
                      MyProfile(),
                      MyPosts(), 
                     ],
                      ),
                 ),
          
          ),
          ),
        );
  }
}
  