import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  BannerScreen({super.key});
  List<dynamic> todo = ["user1", "user2", "user3", "user4"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 300,
                      clipBehavior: Clip.antiAlias,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1)),
                      child: SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/images/img.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        );
      },
      itemCount: todo.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
