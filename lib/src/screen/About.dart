import 'package:flutter/material.dart';
import 'HomePage.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text("About Page")),
      body: Center(
        child: TextButton(
          child: Text("Go Secand"),
          onPressed: () => Navigator.pop(context, HomePage()),
        ),
      ),
    );
  }
}
