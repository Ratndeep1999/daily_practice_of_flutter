import 'package:daily_practice/details_screen.dart';
import 'package:daily_practice/list_screen.dart';
import 'package:daily_practice/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // home: ListScreen(),
      initialRoute: kListPage,
      routes: {
        kListPage : (context) => ListScreen(),
        kDetailsPage : (context) => DetailsScreen()
      },
    );
  }
}