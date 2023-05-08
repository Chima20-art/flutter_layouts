import 'package:flutter/material.dart';
import 'package:flutter_layouts/pages/home/main.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';


class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
List<ScreenHiddenDrawer> _pages =[];

@override
void initState() {
  super.initState();
  
  _pages = [
    ScreenHiddenDrawer(
      ItemHiddenMenu(name: 'HomePage', baseStyle: TextStyle(), selectedStyle: TextStyle(color: Colors.black)),
      Home(),
    ),
  ];

  }


  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens:_pages , 
      backgroundColorMenu: Colors.white) ;
  }
}

