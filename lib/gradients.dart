import 'package:flutter/material.dart';

class Gradients extends StatelessWidget {
  const Gradients({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container of LinearGradient
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.red, Colors.green],
                  stops: [0.2, 0.5, 1.0],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.clamp,
                ),
              ),
            ),

            // Container with RadialGradient
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.orange, Colors.deepPurple],
                  stops: [0.3, 1.0],
                  center: Alignment.center,
                  radius: 0.8,
                  tileMode: TileMode.clamp,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
