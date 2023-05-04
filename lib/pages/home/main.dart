import 'package:flutter/material.dart';
import 'package:flutter_layouts/pages/home/widgets/appbar.dart';
import 'package:flutter_layouts/pages/home/widgets/home-posts.dart';
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
          child: HomePageContent(),
        ),
         bottomNavigationBar: MyBottomNavigationBar (),

      ),);
    
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(padding:  EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text("Hello", style: TextStyle(color: Colors.grey, fontSize: 18.0,),),
               Text("John Doe", style: TextStyle(color: Colors.white, fontSize: 24.0)),
              Expanded(child: HomePosts()),
            ],
          ),);
  }
}