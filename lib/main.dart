import 'package:flutter/material.dart';
/* import 'package:testing/src/screen/ApiFetch.dart';
import 'package:testing/src/screen/AnimatedBottomBar.dart'; */
/* import 'package:testing/src/screen/About.dart'; */
/* import 'package:testing/src/screen/ApiFetch.dart'; */
/* import 'package:testing/src/screen/HomePage1.dart';
import 'package:testing/src/screen/Screen1.dart';
import 'package:testing/src/screen/Productlist.dart';
import './src/screen/HomePage.dart'; */
/* import 'package:testing/src/screen/SliderImage.dart';
import 'package:testing/src/screen/screen2/ListScreen.dart';
import 'package:testing/src/screen1/Home.dart'; */
import 'package:testing/src/screen1/ListScreen/HomeListScreen.dart';
import 'package:testing/src/screen1/ListScreen/ListDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*  initialRoute: '/', */
      home: SafeArea(child: HomeListScreen()),
      /*  routes: {
        '/': (context) => HomeListScreen(),
        /*  '/listDetails': (context) => ListDetails() */
      }, */
    );
  }
}
