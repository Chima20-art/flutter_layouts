import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:get/get.dart';

class HomePosts extends StatefulWidget {
  const HomePosts({super.key});

  @override
  State<HomePosts> createState() => _MyHomePostsState();
}

class AppPost{

}

class _MyHomePostsState extends State<HomePosts> {

  final List<Map<String, String>> _listItem = [
   { 'image':'assets/images/one.jpg','views':'1.5k','likes':'229','description':'The forest of love'},
    { 'image':'assets/images/two.jpg','views':'2.5k','likes':'259','description':'Peaceful green'},
     { 'image':'assets/images/three.jpg','views':'14.5k','likes':'229','description':'Peaceful green'},
      { 'image':'assets/images/four.jpg','views':'13.5k','likes':'259','description':'Peaceful green'},
       { 'image':'assets/images/five.jpg','views':'18.5k','likes':'259','description':'Peaceful green'},
        { 'image':'assets/images/six.jpg','views':'11.5k','likes':'229','description':'Peaceful green'},
         { 'image':'assets/images/one.jpg','views':'10.5k','likes':'229','description':'Peaceful green'},
          { 'image':'assets/images/two.jpg','views':'15.5k','likes':'259','description':'Peaceful green'},
  ] ;

  @override
  Widget build(BuildContext context) {
    debugPrint(_listItem.toString());
    return   Expanded(
           
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.only(top:10,),
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: (1 / 1.27),
              children: _listItem.map((item) => Card(
              color:  Colors.transparent,
                child:  Column(
                  children: [
                    Expanded(
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(item['image'] ?? "",fit: BoxFit.cover, height: 100.0,),
                    ),
                ),
                  const SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(item['views']!,style: TextStyle(color: Colors.white),),
                          const SizedBox(width: 5,),
                          const  Icon(Icons.remove_red_eye, color: Colors.white, size: 13,)
                        ],
                      ),
                        Row(
                        children: [
                          Text(item['likes']!,style: TextStyle(color: Colors.white),),
                          const SizedBox(width: 5,),
                          const Icon(Icons.heart_broken_rounded, color: Colors.white, size: 13,)
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(item['description']?? "", style: TextStyle(color: Colors.white, fontSize: 16),)
                 ],) 
                  ],
                ),
              )).toList(),
              ),
              
              );
      
  }
}


