import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_layouts/pages/widgets/glassmorphism.dart';
import 'pages/profile/main.dart';
import 'pages/home/main.dart';
import 'package:flutter_layouts/pages/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
      Home(),
      Center(child: Text('coming soon ..')),
      Center(child: Text('coming soon ..')),
      Profile(),
  ];



  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
    return   SafeArea(
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        body: _widgetOptions.elementAt(_selectedIndex) ,
        bottomNavigationBar: Container(
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
                      selectedIndex: _selectedIndex,
                      onTabChange: (index){
                        setState(() {
                          _selectedIndex=index;
                        });
                      },
                      ),
                                       ),
                     )
        ,

        ),
        
    ),
    ) ;
  }
}