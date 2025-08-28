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
              margin: EdgeInsets.only(left: 80, bottom: 80),  // outer space
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 50),  // inner space
              height: 250,
              width: 250,
              alignment: Alignment.bottomRight,  // to align child widget
              decoration: BoxDecoration(color: Colors.greenAccent.shade200),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.purple.shade500),
              ),
            ),

            DecoratedBox(
              decoration: BoxDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
