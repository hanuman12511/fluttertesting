import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  String? title;
  HeaderBar({Key? key, this.title}) : super(key: key);
  menubarbutton() {
    print("context");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: BoxDecoration(color: Colors.red),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(children: [
                  IconButton(
                    onPressed: menubarbutton,
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "$title",
                    style: TextStyle(color: Colors.white),
                  ),
                ]),
              ),
              IconButton(
                onPressed: menubarbutton,
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
