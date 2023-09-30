import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static const String routeName="screen2";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.asset("assets/images/Ellipse 10.png",width: 60,height: 60,),
                ],
              ),
              SizedBox(width: 5,),
              Column(
                children: [
                  Text("Hello, Jade",style: TextStyle(fontSize: 16,color: Colors.black),),
                  SizedBox(height: 5,),
                  Text("Ready to workout?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
                ],
              ),
              SizedBox(width: 230,),
              Icon(Icons.notifications)
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/heart.png",width: 30,height: 30,),
                      Text("Heart Rate",style: TextStyle(fontSize: 12,color: Colors.black),),
                    ],
                  ),
                  Text("81 BPM",style: TextStyle(fontSize: 12,color: Colors.black),),

                ],
              ),VerticalDivider(
                thickness: 2,
                  color: Colors.black38,
                indent: 5,
                endIndent: 5,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/list.png",width: 30,height: 30,),
                      Text("To-do",style: TextStyle(fontSize: 12,color: Colors.black),),
                    ],
                  ),
                  Text("32.5%",style: TextStyle(fontSize: 12,color: Colors.black),),

                ],
              ),VerticalDivider(
                thickness: 2,
                color: Colors.black38,
                indent: 5,
                endIndent: 5,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/Vector.png",width: 30,height: 30,),
                      Text("Calo",style: TextStyle(fontSize: 12,color: Colors.black),),
                    ],
                  ),
                  Text("1000 Cal",style: TextStyle(fontSize: 12,color: Colors.black),),

                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
