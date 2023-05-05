import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/profile/main.dart';
import 'pages/home/main.dart';
import 'package:flutter_layouts/pages/widgets/navigation_bar.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
    return const  SafeArea(
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        body: Profile(),
         bottomNavigationBar:  MyBottomNavigationBar (),

        ),
    ),
    ) ;
  }
}