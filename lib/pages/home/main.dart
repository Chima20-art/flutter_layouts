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

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;


  int _selectedIndex= 0;

  void _setSelectedIndex(index){
    setState(() {
      _selectedIndex= index;
    });
  }

  void _onOpen(){
    setState(() {
      xOffset=220;
      yOffset=130;
      scaleFactor=0.7;
      isDrawerOpen=true;
    });
  }
   void _onClose(){
    setState(() {
      xOffset=0;
      yOffset=0;
      scaleFactor=1;
      isDrawerOpen=false;
    });
  }

  final  List<Widget>  _widgetOptions = [
    const HomePageContent(),
    const Center(child: Text("Coming soooon ...",style: TextStyle(color: Colors.white),)),
  ];

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(  borderRadius: BorderRadius.circular(100)),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar:  PreferredSize(
            preferredSize: const  Size.fromHeight(60.0),
              child: MyAppBar(onOpen:_onOpen, isDrawerOpen: isDrawerOpen,onClose:_onClose),
            
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
        ),),
    );
    
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