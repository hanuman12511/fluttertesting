import 'package:flutter/material.dart';
import 'HomePage.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return /* SingleChildScrollView(
      child: Column(children: [
        for (int i = 0; i < 20; i++)
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
            color: Colors.blue,
          )
      ]),
 */
        Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: const <Widget>[
                          Text("programming"),
                          Text("programming"),
                          Image(
                            image: NetworkImage(
                              'https://images.pexels.com/photos/1525043/pexels-photo-1525043.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                            ),
                            width: 200,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ],
                      )

                      /* new Image.network(
                    'https://images.pexels.com/photos/1525043/pexels-photo-1525043.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    width: 200,
                  ),
                  alignment: Alignment.center,
                  /* new Image.asset('assets/images/pro.jpg'),
                  alignment: Alignment.center, */
                  margin: EdgeInsets.all(70), */
                      ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.deepOrange,
                    child: Text("data"),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.only(top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.cyan,
                    child: Text("data"),
                    height: 200,
                  ),
                  Container(
                    color: Colors.deepOrange,
                    child: Text("data"),
                    height: 200,
                  ),
                  Container(
                    color: Colors.deepOrange,
                    child: Text("data"),
                    height: 200,
                  ),
                  /* Text(
                  "data",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontFamily: AutofillHints.postalCode),
                ), */
                ],
              ),
            ),
          ],
        ),
      ),
    );
    /*  return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text("About Page")),
      body: Center(
        child: TextButton(
          child: Text("Go Secand"),
          onPressed: () => Navigator.pop(context, HomePage()),
        ),
      ),
    ); */
  }
}
