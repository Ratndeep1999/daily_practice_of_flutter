import 'package:daily_practice/first_page.dart';
import 'package:daily_practice/route_constants.dart';
import 'package:daily_practice/second_page.dart';
import 'package:daily_practice/third_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        kFirstPage : (context) => FirstPage(),
        kSecondPage : (context) => SecondPage(),
        kThirdPage : (context) => ThirdPage(),
      },
    );
  }
}
