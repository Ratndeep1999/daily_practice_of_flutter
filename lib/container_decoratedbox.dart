import 'package:flutter/material.dart';

class ContainerDecoratedbox extends StatelessWidget {
  const ContainerDecoratedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // outer space
              margin: EdgeInsets.only(left: 140, bottom: 80),
              // inner space
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 50),
              height: 250,
              width: 250,
              // pass min/max height and width
              constraints: BoxConstraints(),
              // to align child widget
              alignment: Alignment.bottomRight,
              // rotate the container
              transform: Matrix4.rotationZ(0.4),
              decoration: BoxDecoration(color: Colors.greenAccent.shade200),
              child: Container(
                height: 100,
                width: 100,
                foregroundDecoration: BoxDecoration(
                  // inner decoration
                  shape: BoxShape.circle,
                  color: Colors.black,
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.deepOrange, Colors.yellow],
                  ),
                ),
                decoration: BoxDecoration(color: Colors.purple.shade500),
              ),
            ),

            DecoratedBox(decoration: BoxDecoration()),
          ],
        ),
      ),
    );
  }
}
