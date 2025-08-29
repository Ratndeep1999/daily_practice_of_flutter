import 'package:daily_practice/container_decoratedbox.dart';
import 'package:daily_practice/first_screen.dart';
import 'package:daily_practice/icon_richtext_circleavatar.dart';
import 'package:daily_practice/routes/named_routes.dart';
import 'package:daily_practice/second_screen.dart';
import 'package:daily_practice/text_segmented_buttons.dart';
import 'package:daily_practice/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // initialRoute: kFirstScreen,
      // routes: {
      //   kFirstScreen: (context) => FirstScreen(),
      //   kSecondScreen: (context) => SecondScreen(),
      //   kThirdScreen:
      //       (context) => ThirdScreen(
      //         randomIndex: ModalRoute.of(context)?.settings.arguments as int,
      //       ),
      // },
      home: TextSegmentedButtons(),
    );
  }
}
