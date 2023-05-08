import 'package:flutter/material.dart';
import 'package:flutter_layouts/pages/profile/main.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key,
  required this.onOpen,
    required this.onClose,
  required this.isDrawerOpen,
  }):super(key: key);
  
 final VoidCallback onOpen;
  final VoidCallback onClose;
 final bool isDrawerOpen;

  @override
  Widget build(BuildContext context) {
    return AppBar(
              backgroundColor: Colors.grey[850],
              leading:
                   Column(
                     mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   isDrawerOpen? IconButton(
                        icon: const Icon(Icons.arrow_back_ios,  color: Colors.white,),
                         onPressed: onClose,   
                        ): IconButton(
                        icon: const Icon(Icons.menu,  color: Colors.white,),
                         onPressed: onOpen,   
                        ) 
                    ],
                  ),
              
              actions:  [
                    const IconButton(
                    icon: Icon(Icons.notifications, color: Colors.white,),
                    onPressed:null,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right:15),
                      child: GestureDetector(
                        onTap: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Profile()),
                          );
                        },
                        child: const  IconButton(
                          icon: CircleAvatar(
                           backgroundImage: AssetImage('assets/images/profilepic.jpg'),
                                 ),
                          onPressed:null,
                        ),
                      ),
                    ),
                    
                  ],
                
              
            );
  }
}