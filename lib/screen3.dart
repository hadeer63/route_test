import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  static const String routeName = "screen3";

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  int index=0;
  int currentIndex=0;
  int? _value = 1;
  List<String> _options = ['Discover', 'News', 'Most Viewed','Saved'];

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Group.png",
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Alice Care",
                  style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Container(
                    width: 430,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Colors.white,
                            width: 1.0
                        )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                          prefixIcon: Icon(Icons.search,color: Colors.black45,),
                          hintText: "Articles, Video, Audio and More...",
                          hintStyle: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w300
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Wrap(
                spacing: 10.0,
                children: List<Widget>.generate(
                  4,
                      (int index) {
                    return ChoiceChip(
                      label: Text(_options[index],style: TextStyle(fontSize: 20),),
                      backgroundColor: Color(0xFFE4E7EC),
                      selectedColor: Color(0xFFD6BBFB),
                      selectedShadowColor: Color(0xFFD6BBFB),

                      elevation: 0.0,
                      selected: _value == index,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? index : null;
                        });
                      },
                    );
                  },
                ).toList(),
              ),
            ],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Topics",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20,fontStyle: FontStyle.normal),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0, backgroundColor: Colors.transparent,
                      shadowColor: Colors.white38),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "See All",
                        style:
                        TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color(0xFF7F56D9)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                        color: Color(0xFF7F56D9),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 900,
              child: CarouselSlider(
                  items: [
                    Image.asset(
                      "assets/images/Frame 34665301.png",
                      fit: BoxFit.fitWidth,
                      width: 970,
                    ),
                    Image.asset("assets/images/Frame 3466530.png",
                      fit: BoxFit.fitWidth,
                      width: 970,),
                  ],
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeInSine,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                      height: 150,
                      onPageChanged: (index,reason){
                        setState(() {
                          currentIndex=index;
                        });
                      }

                  ),
                  carouselController: _controller),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Get Tips",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20,fontStyle: FontStyle.normal),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 470,
              height: 250,

              decoration: BoxDecoration(
                  color: Color(0xFFE4E7EC),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/Doctor-PNG-Images 1.png",height: 250,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Connect with doctors &\n get suggestions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: 13,),
                        Text("Connect now and get \n expert insights",style: TextStyle(fontSize: 18),),
                        SizedBox(height: 23,),
                        Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white12,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: Colors.transparent,

                          ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 16) ,
                              backgroundColor: Color(0xFF7F56D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),onPressed: (){}, child: Text("View Details",style: TextStyle(fontSize: 14),)),
                        )
                      ],
                    ),
                  )
                ],
              ),


            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cycle Phases and Period",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20,fontStyle: FontStyle.normal),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0.0, backgroundColor: Colors.transparent,
                      shadowColor: Colors.white38),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "See All",
                        style:
                        TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color(0xFF7F56D9)),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                        color: Color(0xFF7F56D9),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ]),
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
                AssetImage("assets/images/Icon (1).png"),),
              label: "Today",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/Icon.png")),
            label: "Insights",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/message-square-01.png")),
              label: "Chat",
              backgroundColor: Colors.white),
        ],
        selectedItemColor: Color(0xFF7F56D9),
        unselectedItemColor: Colors.black54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
