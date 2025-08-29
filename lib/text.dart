import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Ratndeep',
                selectionColor: Colors.green,
                // Text flow (LTR/RTL)
                textDirection: TextDirection.rtl,
                // Aligns text (left, right, center, justify)
                textAlign: TextAlign.center,
                // Whether text should wrap to the next line
                softWrap: true,
                style: TextStyle(
                  backgroundColor: Colors.purple.shade200,
                  fontSize: 30,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8.0
                ),
              ),
              Text(
                'Good Morning',
                style: TextStyle(color: Colors.lightGreen, fontSize: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
