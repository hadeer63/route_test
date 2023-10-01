import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_route/screen2.dart';
import 'package:test_route/screen3.dart';

class ScreenOne extends StatefulWidget {
  static const String routeName = "screen1";

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int index=0;

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/tree.png",
                    height: 40,
                    width: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Moody",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    width: 300,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Hello, ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "How are you feeling today?",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white38,
                        child: Image.asset("assets/images/love.png",
                            height: 75, width: 75),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Love")
                    ],
                  ),
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white38,
                        child: Image.asset("assets/images/cool.png",
                            height: 75, width: 75),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Cool")
                    ],
                  ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white38,
                        child: Image.asset("assets/images/happy.png",
                            height: 75, width: 75),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Happy")
                    ],
                  ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white38,
                        child: Image.asset("assets/images/sad.png",
                            height: 75, width: 75),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sad")
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0, backgroundColor: Colors.transparent,
                        shadowColor: Colors.white38),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "See More",
                          style:
                              TextStyle(fontSize: 13, color: Colors.lightGreen),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.lightGreen,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              CarouselSlider(
                  items: [
                    Image.asset(
                      "assets/images/walking2.png",
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset("assets/images/walking2.png",
                        fit: BoxFit.fitWidth),
                    Image.asset("assets/images/walking2.png",
                        fit: BoxFit.fitWidth),
                    Image.asset("assets/images/walking2.png",
                        fit: BoxFit.fitWidth),
                    //assets/images/walking2.png
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                    height: 150,
                  ),
                  carouselController: _controller),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercise",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0, backgroundColor: Colors.transparent,
                    shadowColor: Colors.white38),

                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "See More",
                          style:
                              TextStyle(fontSize: 13, color: Colors.lightGreen),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colors.lightGreen,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shadowColor: Colors.white38,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Image.asset("assets/images/relaxation.png",
                        width: 180, fit: BoxFit.fitHeight),
                  ),
                  ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shadowColor: Colors.white38,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Image.asset("assets/images/meditation.png",
                        width: 180, fit: BoxFit.fitHeight),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shadowColor: Colors.white38,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Image.asset(
                      "assets/images/beathing.png",
                      width: 180,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      shadowColor: Colors.white38,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Image.asset(
                      "assets/images/yoga.png",
                      width: 180,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ],
          ),
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
            icon: InkWell(
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.routeName);
              },
                child: ImageIcon(AssetImage("assets/images/Icon.png"))),
            label: ".",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Icon (1).png")),
              label: ".",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/user-03.png")),
              label: ".",
              backgroundColor: Colors.white,
              ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black38,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
      ),


    );
  }
  List<Widget> tabs = [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
  ];
}
