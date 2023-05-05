import 'package:flutter/material.dart';
import 'package:flutter_layouts/pages/home/main.dart';
import 'widgets/myprofile.dart';
import 'widgets/posts.dart';
import 'package:flutter_layouts/pages/widgets/navigation_bar.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
  const   ProfileContent(),
   Container(color: Colors.grey[850],child: const Center(child: Text("Coming soon ...", style: TextStyle(color: Colors.white),))),
  ];

  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
    return     SafeArea(
      child:   MaterialApp(
        debugShowCheckedModeBanner: false,
          home: Scaffold(

            body: _widgetOptions.elementAt(_selectedIndex < _widgetOptions.length ? _selectedIndex: 1),
                 
           bottomNavigationBar:MyBottomNavigationBar(
            selectedIndex: _selectedIndex,
            onTabChange: (index){
              setState(() {
                _selectedIndex =index;
              });
              if (index == 0) {
                 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home())
                  );
              }
            },
             ),
          ),
          
          ),
        );
  }
}
  class ProfileContent  extends StatelessWidget {
  const ProfileContent ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
                   child: Column(
                    children:  [        
                      MyProfile(),
                      MyPosts(), 
                     ],
                      ),
                 );
  }
}