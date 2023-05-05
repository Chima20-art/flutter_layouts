import 'package:flutter/material.dart';
import 'package:flutter_layouts/pages/home/widgets/appbar.dart';
import 'package:flutter_layouts/pages/home/widgets/home_posts.dart';
import 'package:flutter_layouts/pages/widgets/navigation_bar.dart';

class Home extends StatefulWidget {

   const  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex= 0;

  void _setSelectedIndex(index){
    setState(() {
      _selectedIndex= index;
    });
  }

  final  List<Widget>  _widgetOptions = [
    const HomePageContent(),
    const Center(child: Text("Coming soooon ...",style: TextStyle(color: Colors.white),)),
  ];

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize:  Size.fromHeight(60.0),
            child: MyAppBar(),
          
        ),
        body:  Container( 
          color: Colors.grey[850] ,
          height: double.infinity,
          width:double.infinity ,
          child: _widgetOptions.elementAt(_selectedIndex < _widgetOptions.length ? _selectedIndex : 1),
        ),
        bottomNavigationBar: MyBottomNavigationBar(
          selectedIndex:_selectedIndex,
          onTabChange: (index) => _setSelectedIndex(index) ,
           ),
      ),);
    
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Padding(padding:  EdgeInsets.only(top: 20.0, left: 35.0,right:35.0,),
          child:
               Expanded(child: HomePosts()),
          );
  }
}