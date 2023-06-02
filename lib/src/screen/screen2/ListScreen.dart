import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListScreen extends StatelessWidget {
  List<String> menubar = ["Home", "About"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menubar.length,
          itemBuilder: (context, index) => menubarlist(index, context)),
    );
  }

  Widget menubarlist(int index, BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: TextButton(
                onPressed: () {
                  _showDialog(context, index);
                },
                child: Text(
                  menubar[index],
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ));
  }

  void _showDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(menubar[index]),
          content: const Text("You are awesome!"),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
