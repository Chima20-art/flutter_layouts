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

  static int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
      Home(),
      Center(child: Text("Coming soooon ...")),
  ];



  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
    return   SafeArea(
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        body: _widgetOptions.elementAt(_selectedIndex < _widgetOptions.length ? _selectedIndex: 1 ) ,
        ),
        
    ),
    ) ;
  }
}