import 'package:flutter/material.dart';

import 'package:testing/src/components/HeaderBar.dart';

class ListDetails extends StatelessWidget {
  String? text;

  ListDetails({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> todo = ModalRoute.of(context)!.settings.arguments as List;
    print(todo);
    // List<dynamic> todo = ["user1", "user2", "user3", "user4"];

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          HeaderBar(),
          /*   Text("$text"), */
          Container(
            color: Colors.amber,
            height: 300,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      todo[index],
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        backgroundColor: Colors.tealAccent,
                        fontSize: 40,
                      ),
                    ),
                  ],
                );
              },
              itemCount: todo.length,
              itemExtent: 100,
              scrollDirection: Axis.vertical,
            ),
          )
        ],
      ),
    ));
  }
}
