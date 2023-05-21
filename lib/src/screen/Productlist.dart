import 'package:flutter/material.dart';

class Productlist extends StatefulWidget {
  const Productlist({super.key});

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Column(children: <Widget>[
              Text("Note Title"),
              Text("Note Text"),
            ]),
          );
        },
        itemCount: 30,
      ),
    );
  }
}
