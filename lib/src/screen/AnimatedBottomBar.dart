import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:testing/src/screen/ApiFetch.dart';

//main app that calls the runApp.
class AnimatedBottomBar extends StatefulWidget {
  AnimatedBottomBar({Key? key}) : super(key: key);

  @override
  State<AnimatedBottomBar> createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  List<IconData> iconList = [
    //list of icons that required by animated navigation bar.
    Icons.abc_sharp,
    Icons.access_time,
    Icons.holiday_village,
    Icons.account_tree_rounded
  ];
  int _bottomNavIndex = 0; //default index of the tabs
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold
      appBar: AppBar(title: Text("data")),
      body: Container(
        child: HomePage(),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home_max_outlined), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        //navigation bar
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
