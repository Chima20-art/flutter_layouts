import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_layouts/pages/widgets/navigation_bar.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(
        
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});
 
  final List<BottomNavigationBarItem> _bottomNavBarItems = [
   const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
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
                      IconButton(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profilepic.jpg'),
                  ),
                  onPressed:null,
                          ),
                  ],
                
              
            ),
          
        ),
        body:  Container(  color: Colors.amber ,height: MediaQuery.of(context).size.height, width:double.infinity ,child: Text("hello world!",textDirection: TextDirection.ltr)),
        bottomNavigationBar: MyBottomNavigationBar (),
        ),
      );
    
  }
}
