import 'package:flutter/material.dart';
import 'package:testing/src/screen/ApiFetch.dart';
/* import 'package:testing/src/screen/About.dart'; */
/* import 'package:testing/src/screen/ApiFetch.dart'; */
/* import 'package:testing/src/screen/HomePage1.dart';
import 'package:testing/src/screen/Screen1.dart';
import 'package:testing/src/screen/Productlist.dart';
import './src/screen/HomePage.dart'; */
import 'package:testing/src/screen/SliderImage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiFetch(),
      /*  initialRoute: '/',
      routes: {'/': (context) => HomePage1(), '/about': (context) => About()},
     */
    );
  }
}
