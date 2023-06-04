import 'package:flutter/material.dart';
import 'package:testing/src/components/HeaderBar.dart';

class ProductTab extends StatelessWidget {
  const ProductTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: HeaderBar(),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(color: Color.fromARGB(255, 197, 17, 4)),
            child: Stack(children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 400,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 252, 252, 252),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                height: 400,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 6, 223, 86),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                              Container(
                                height: 300,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 6, 158, 223),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(300),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(30))
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(30))
            ]),
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Stack(children: [
              Container(
                margin: EdgeInsets.all(30),
                height: 400,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          child: Center(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.speed_outlined,
                                  size: 50,
                                ),
                                Text("Speed"),
                                Text("150MBPS")
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Center(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 50,
                                ),
                                Text("Due Date"),
                                Text("15 JUN 2023")
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Center(
                            child: Column(
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.currency_rupee,
                                    size: 50,
                                  ),
                                ),
                                Text("Due Amount"),
                                Text("Rs.0")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Row(children: []),
                  )
                ]),
              )
            ]),
          )
        ],
      ),
    );
  }
}
