import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  static const String routeName="screen3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alice Care"),
      leading: Image.asset("assets/images/Group.png"),),
    );
  }
}
