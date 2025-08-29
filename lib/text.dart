import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Ratndeep',
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Good Morning',
              style: TextStyle(color: Colors.lightGreen, fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
