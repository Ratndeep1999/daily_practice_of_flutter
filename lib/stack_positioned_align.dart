import 'package:flutter/material.dart';

class StackPositionedAlign extends StatelessWidget {
  const StackPositionedAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment(-0.85, 5),
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

            Align(
              alignment: Alignment(-0.8, -0.58),
              child: CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage('assets/images/demo.webp'),
              ),
            ),

            Align(
              alignment: Alignment(0.8, -0.6),
              child: SizedBox(
                height: 320,
                width: 180,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffe9b7ce), Color(0xffd3f3f1)],
                    ),
                    border: Border.all(color: Colors.black12, width: 0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                        spreadRadius: 2,
                      ),
                    ],
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
