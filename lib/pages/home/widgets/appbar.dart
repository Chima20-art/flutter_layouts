import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
              backgroundColor: Colors.grey[850],
              leading:
                  const Column(
                     mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    IconButton(
                        icon: Icon(Icons.menu,  color: Colors.white,),
                        onPressed:null,    
                        ),
                    ],
                  ),
              
              actions: const [
                     IconButton(
                    icon: Icon(Icons.notifications, color: Colors.white,),
                    onPressed:null,
                    ),
                    Padding(
                        padding: EdgeInsets.only(right:15),
                      child: IconButton(
                        icon: CircleAvatar(
                         backgroundImage: AssetImage('assets/images/profilepic.jpg'),
                               ),
                        onPressed:null,
                      ),
                    ),
                    
                  ],
                
              
            );
  }
}