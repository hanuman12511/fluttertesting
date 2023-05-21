import 'package:flutter/material.dart';
import 'package:testing/src/screen/About.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text("Homepage1")),
      body: Center(
        child: TextButton(
          child: Text("Go Secand"),
          onPressed: () => Navigator.pushNamed(context, '/about'),
        ),
      ),
    );
  }
}
