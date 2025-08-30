import 'package:flutter/material.dart';

class StackPositionedAlign extends StatelessWidget {
  const StackPositionedAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment(-0.85, 5),
          children: [
            SizedBox(
              height: 180,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff00ff87), Color(0xff60efff)],
                  ),
                ),
              ),
            ),

            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/demo.webp'),
            ),

            SizedBox(
              height: 20,
              width: 20,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffe9b7ce), Color(0xffd3f3f1)],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
