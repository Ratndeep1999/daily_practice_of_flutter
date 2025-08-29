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
              'Good Morning',
              style: TextStyle(color: Colors.lightGreen, fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
