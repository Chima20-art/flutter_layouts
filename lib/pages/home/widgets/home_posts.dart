import 'package:flutter/material.dart';

class HomePosts extends StatefulWidget {
  const HomePosts({super.key});

  @override
  State<HomePosts> createState() => _MyHomePostsState();
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello", style: TextStyle(color: Colors.grey, fontSize: 18.0,),),
            const  Text("John Doe", style: TextStyle(color: Colors.white, fontSize: 24.0)),
             SizedBox(
              height:230,
              child: 
                  GridView.count( 
                    crossAxisCount: 2,
                    padding: const EdgeInsets.only(top:10,bottom:10),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    childAspectRatio: (1 / 1.27),    
                    children: _listItem.take(2).map((item) => Card(
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
                                Text(item['views']!,style: const TextStyle(color: Colors.white),),
                                const SizedBox(width: 5,),
                                const  Icon(Icons.remove_red_eye, color: Colors.white, size: 13,)
                              ],
                            ),
                              Row(
                              children: [
                                Text(item['likes']!,style:const  TextStyle(color: Colors.white),),
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
                          Text(item['description']?? "", style:const  TextStyle(color: Colors.white, fontSize: 16),)
                       ],) 
                        ],
                      ),
                    )).toList(),
                    ),
                ),
                  Container(
                    height: 160,
                     decoration: BoxDecoration(
                      gradient:const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF0a04b0), // dark blue
                        Color(0xFF3832ed), // light blue
                      ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical:20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const Text(
                                  'Try full features in our Premium plans.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                
                              ),
                               ElevatedButton(
                                  onPressed: () {
                                    // Add your Go pro button functionality here
                                  },
                              
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    padding:const  EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      
                                    ),
                                    
                                  ),
                                   child:const  Text('Go pro'),
                                ),
                              
                            ],
                          ),
                        ),
                      
                    ),
                  
                    
                   SingleChildScrollView(
                     child: GridView.count(
                                crossAxisCount: 2,
                                padding: const EdgeInsets.only(top: 10,),
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 15,
                                childAspectRatio: (1 / 1.27),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                physics: 
                                const NeverScrollableScrollPhysics(),
                                children: _listItem.skip(2).map((item) => Card(
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
                                Text(item['views']!,style:const TextStyle(color: Colors.white),),
                                const SizedBox(width: 5,),
                                const  Icon(Icons.remove_red_eye, color: Colors.white, size: 13,)
                              ],
                            ),
                            Row(
                              children: [
                                Text(item['likes']!,style:const TextStyle(color: Colors.white),),
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
                            Text(item['description']?? "", style:const  TextStyle(color: Colors.white, fontSize: 16),)
                          ],
                        ),
                      ],
                                  ),
                                )).toList(),
                              ),
                   ),
                  
          ],),
    );
      
  }
}


