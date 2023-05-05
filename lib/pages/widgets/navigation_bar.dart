
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'glassmorphism.dart';

class MyBottomNavigationBar extends StatefulWidget {

  final int selectedIndex;
  final Function(int) onTabChange;

  const MyBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabChange,
     }): super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return         Container(
                      color: Colors.black,
                       child: Glassmorphism(
                        blur: 100,
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
                      ],
                      selectedIndex: widget.selectedIndex,
                      onTabChange: widget.onTabChange,

                        
                      
                      
                    ),
                                       ),
                     );
        
  }
}
