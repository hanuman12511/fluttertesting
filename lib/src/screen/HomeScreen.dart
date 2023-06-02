import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30,
        backgroundColor: Colors.amber,
        elevation: 4,
        title: Text("RsCloths"),
        titleTextStyle: TextStyle(color: Colors.green, fontSize: 30),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          alignment: AlignmentDirectional.center,
          iconSize: 30,
          color: Colors.green,
          splashColor: Colors.purple,
          onPressed: () {},
        ),
      ),
      body: Column(children: [
        Container(
          height: size.height * .3,
          child: Stack(children: [
            Container(
              height: size.height * .3 - 27,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20))),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 50,
                        offset: Offset(0, 10),
                        color: Colors.black26)
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
