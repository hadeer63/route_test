import 'package:flutter/material.dart';
import 'package:test_route/screen1.dart';
import 'package:test_route/screen2.dart';
import 'package:test_route/screen3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenOne.routeName,
      routes: {
        ScreenOne.routeName:(context) => ScreenOne(),
        ScreenTwo.routeName:(context) => ScreenTwo(),
        ScreenThree.routeName:(context) => ScreenThree(),
      },
    );
  }
}

void main(){
  runApp(MyApp());
}
