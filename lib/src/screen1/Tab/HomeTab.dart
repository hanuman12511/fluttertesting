import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox.expand(
      child: Container(
        color: Colors.amber,
        width: width,
        height: height,
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 7, 255, 160),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                  width: width,
                  height: height / 2,
                ),
                Container(
                  width: width,
                  height: height / 1.6,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 251, 251, 251),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
