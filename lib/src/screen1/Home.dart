import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testing/src/screen1/Tab/HomeTab.dart';
import 'package:testing/src/screen1/Tab/AboutTab.dart';
import 'package:testing/src/screen1/Tab/ProductTab.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Container(child: Text("Dat"), color: Colors.black),
                icon: Icon(Icons.alarm_rounded),
              ),
              Tab(
                icon: Icon(Icons.alarm_rounded),
              ),
              Tab(
                icon: Icon(Icons.alarm_rounded),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: HomeTab(),
            ),
            Center(
              child: AboutTab(),
            ),
            Center(
              child: ProductTab(),
            ),
          ],
        ),
      ),
    );
  }
}
