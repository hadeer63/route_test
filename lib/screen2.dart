import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName = "screen2";

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  int index=0;
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/Ellipse 10.png",
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Jade",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationColor: Colors.transparent),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ready to workout?",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decorationStyle: TextDecorationStyle.solid,
                            decorationColor: Colors.transparent),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Icon(Icons.notifications)
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 430,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/heart.png",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Heart Rate",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      decorationStyle: TextDecorationStyle.solid,
                                      decorationColor: Colors.transparent),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "81 BPM",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationColor: Colors.transparent),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Colors.black38,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/list.png",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "To-do",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      decorationStyle: TextDecorationStyle.solid,
                                      decorationColor: Colors.transparent),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "32.5%",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationColor: Colors.transparent),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Colors.black38,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/Vector.png",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Calo",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      decorationStyle: TextDecorationStyle.solid,
                                      decorationColor: Colors.transparent),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "1000 Cal",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationColor: Colors.transparent),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Workout Programs",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Colors.transparent),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  TabBar(
                      indicatorWeight: 10,
                      isScrollable: true,
                      tabs: <Widget>[
                    Text("All Type"),
                    Text("Full Body"),
                    Text("Upper"),
                    Text("Lower"),
                  ]),
                ],
              ),
              // Row(
              //   children: [
              //     TabBarView(children: [
              //       Column(
              //         children: [Image.asset("assets/images/Plank2.png",),
              //         SizedBox(height: 20,),
              //         Image.asset("assets/images/Plank.png")],
              //       ),Container()
              //       ,Container(),
              //       Container(),
              //     ]),
              //   ],
              // )

            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: widget.index,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/home-05.png"),),
                label: ".",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/navigation-pointer-01.png")),
              label: ".",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/bar-chart-07.png")),
                label: ".",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/user-03.png")),
              label: ".",
              backgroundColor: Colors.white,
            ),
          ],
          selectedItemColor: Colors.blue[900],
          unselectedItemColor: Colors.black38,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.shifting,
        ),

      ),
    );
  }
}
