import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(children: [
        Container(
            width: width,
            height: 200,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.greenAccent,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width / 2.5,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 7, 255, 65),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    'assets/images/img1.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: width / 2.2,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 7, 7),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("data"),
                ),
              ],
            )),
        Container(
          width: width,
          height: 200,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text("data"),
        ),
        Container(
          width: width,
          height: 200,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text("data"),
        ),
      ]),
    );
  }
}
