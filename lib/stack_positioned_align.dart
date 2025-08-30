import 'package:flutter/material.dart';

class StackPositionedAlign extends StatelessWidget {
  const StackPositionedAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                // alignment: Alignment(0.1, 3),   // right/left  // up/down
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    color: Colors.purpleAccent,
                  ),
                  // this never moves
                  Positioned(
                    top: 50,
                    left: 50,
                    right: 20,
                    bottom: 20,
                    child: Container(
                      height: 170,
                      width: 170,
                      color: Colors.orange,
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    color: Colors.yellowAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
