import 'package:daily_practice/routes/named_routes.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'First Screen',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(kSecondScreen);
                },
                highlightColor: Colors.transparent,
                splashRadius: 0.50,
                icon: Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 80,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
