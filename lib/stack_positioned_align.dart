import 'package:flutter/material.dart';

class StackPositionedAlign extends StatelessWidget {
  const StackPositionedAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          //alignment: Alignment(-0.85, 5),
          children: [
            /// Rectangle image
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                // gradient: LinearGradient(
                //   colors: [Color(0xff00ff87), Color(0xff60efff)],
                // ),
              ),
              //clipBehavior: Clip.antiAlias,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  'assets/images/horizontal_pic3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            /// circular image
            // Align(
            //   alignment: Alignment(-0.8, -0.45),
            //   child: CircleAvatar(
            //     radius: 65,
            //     backgroundImage: AssetImage('assets/images/square_pic.jpg'),
            //   ),
            // ),

            /// vertical image
            Align(
              alignment: Alignment(0.6, -0.4),
              child: Container(
                height: 280,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //   colors: [Color(0xffe9b7ce), Color(0xffd3f3f1)],
                  // ),
                  // border: Border.all(color: Colors.black12, width: 0.5),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black12,
                  //     blurRadius: 3,
                  //     spreadRadius: 2,
                  //   ),
                  // ],
                ),
                // strict to follow border of child
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  'assets/images/vertical_pic.jpg',
                  fit: BoxFit.cover,
                  //isAntiAlias: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
