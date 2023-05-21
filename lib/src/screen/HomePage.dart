import 'package:flutter/material.dart';
import 'About.dart';

class HomePage extends StatelessWidget {
  handleButtonClick(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: ((context) => About())));
    /*  const snackBar = SnackBar(
      content: Text("Text Button Clicked!"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
        child: TextButton(
            onPressed: () {
              handleButtonClick(context);
            },
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: Colors.amberAccent[800],
              padding: const EdgeInsets.all(10.0),
            ),
            //Contents of the button
            child: const Text("Click Text Button!")),
      ),
    );
  }
}
