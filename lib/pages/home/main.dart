import 'package:flutter/material.dart';
import 'package:flutter_layouts/pages/home/widgets/appbar.dart';
import 'package:flutter_layouts/pages/home/widgets/home-posts.dart';



class Home extends StatelessWidget {
 const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(
        
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   const  MyHomePage({super.key});

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
          child: const  HomePageContent(),
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