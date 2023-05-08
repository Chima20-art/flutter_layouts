import 'package:flutter/material.dart';
import 'package:flutter_layouts/pages/home/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';


class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
 
  List<Map> drawerItems=[

  {
    'icon': FontAwesomeIcons.plus,
    'title' : 'Add pet'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Favorites'
  },
  {
    'icon': Icons.mail,
    'title' : 'Messages'
  },
];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:30, left: 10,bottom: 20),
      color: Colors.grey.shade400,
     child:  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children:[
        Row(children: [
        const  CircleAvatar(                          
           backgroundImage: AssetImage('assets/images/profilepic.jpg'),
          ),
         const  SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("John Deep", style:TextStyle(color:  Colors.grey.shade700, fontWeight: FontWeight.bold)),
               Text("Active Status", style:TextStyle(color:Colors.grey.shade600,fontSize: 10, fontWeight: FontWeight.bold)),
            ],
          ),
        ],),
        Column(
              children: drawerItems.map((element) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(element['icon'],color: Colors.grey.shade700,size: 25,),
                  SizedBox(width: 10,),
                  Text(element['title'],style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold,fontSize: 15))
                ],

              ),
            )).toList(),


        ),
         Row(
          children: [
            Icon(Icons.settings,color:Colors.grey.shade600, size: 20,),
            Text('Settings', style:TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold, fontSize: 13),),
            const SizedBox(width: 10,),
            Container(width: 1, height:20 ,color:Colors.grey.shade700,),
            const SizedBox(width: 10,),
            Text('Log out ', style:TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold, fontSize: 13),),

          ],
        ),
      ]));
  }
}

