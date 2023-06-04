import 'package:flutter/material.dart';
import 'package:testing/src/screen1/ListScreen/ListDetails.dart';
import 'package:testing/src/components/HeaderBar.dart';
import 'package:testing/src/components/BrannerScreen.dart';

class HomeListScreen extends StatelessWidget {
  HomeListScreen({super.key});
  void onPressed(context) {
    print("heill list detals");
    List list = ["user1", "user2", "user3", "user4"];
    Navigator.push(
      context,
      MaterialPageRoute(
        /* builder: (context) => ListDetails(text:"data"),*/
        builder: (context) => ListDetails(text: "data"),
        settings: RouteSettings(arguments: list),
      ),
    );
  }

  String title = "Hi HanumanSaini!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                HeaderBar(title: title),
              ],
            ),
          ),
          Container(
            height: 200,
            child: BannerScreen(),
          ),
          TextButton(
            onPressed: () => onPressed(context),
            child: Text("data"),
          ),
        ],
      ),
    );
  }
}



  /*  SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1)),
                  child: SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("assets/images/img1.jpg"),
                  ),
                ),
              ),
            ]),
          ) */


/* 
 ListView.builder(
  itemCount: todos.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(todos[index].title),
      // When a user taps the ListTile, navigate to the DetailScreen.
      // Notice that you're not only creating a DetailScreen, you're
      // also passing the current todo through to it.
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(todo: todos[index]),
          ),
        );
      },
    ); */