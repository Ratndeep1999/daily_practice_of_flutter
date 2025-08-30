import 'package:flutter/material.dart';

class StackPositionedAlign extends StatelessWidget {
  const StackPositionedAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 20,
                  width: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Color(0xff00ff87)),
                  ),
                ),
              ],
            ),

            Center(
              child: Stack(
                //alignment: Alignment(0, 0),   // right/left  // up/down
                alignment: Alignment.center,
                fit: StackFit.passthrough,
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    color: Colors.purpleAccent,
                  ),
                  // this never moves
                  Container(height: 170, width: 170, color: Colors.orange),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      height: 120,
                      width: 120,
                      color: Colors.yellowAccent,
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.5, 0.3),
                    child: Container(
                      height: 70,
                      width: 70,
                      color: Colors.green,
                    ),
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
