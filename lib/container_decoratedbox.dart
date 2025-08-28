import 'package:flutter/material.dart';

class ContainerDecoratedbox extends StatelessWidget {
  const ContainerDecoratedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // outer space
              margin: EdgeInsets.only(left: 50, bottom: 80),
              // inner space
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 50),
              height: 250,
              width: 250,
              // pass min/max height and width
              //constraints: BoxConstraints.tightForFinite(width: 300),
              // to align child widget
              alignment: Alignment.bottomRight,
              // transform rotate the container
              // change the position of container applicable only with transform property
              //transformAlignment: Alignment(0.8, 0.9), // 1.vertical // 2.horizontal
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade200,
                // for edges circular
                // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                // border
                border: Border.symmetric(
                    vertical: BorderSide(
                      color: Colors.red,
                      width: 5,
                    ),
                    horizontal: BorderSide(
                      color: Colors.yellowAccent,
                      width: 3,
                    )
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    // blueness
                    blurRadius: 20.0,
                    // area
                    spreadRadius: 15.5,
                    // restrict area of shadow
                    //blurStyle: BlurStyle.inner
                    // direction of shadow 3d effect
                    offset: Offset(40.0, 40.0)   // right  // bottom
                  ),
                ],
                // shape
                shape: BoxShape.rectangle,
                // to add image
                //image: DecorationImage(image: AssetImage('assets/images/demo.webp')),
                // blur to entire parent not child
                // backgroundBlendMode: BlendMode.colorBurn
                gradient: LinearGradient(
                  colors: [
                    Colors.lightGreen,
                    Colors.amber
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // stops: [0.0, 0.0],
                  // gradient mix-up
                  transform: GradientRotation(5.5),
                  tileMode: TileMode.mirror,
                ),
              ),
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

            SizedBox(height: 50,),

            SizedBox(
              height: 200,
              width: 200,
              // only for decorated box
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.tealAccent.shade700,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 10,
                      blurRadius: 30,
                      offset: Offset(40.0, 50.0)
                    ),
                  ],
                  border: Border.all(
                    color: Colors.white,
                    width: 10.0
                  ),
                  gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.deepOrange,
                        Colors.orange,
                        Colors.orangeAccent,
                        Colors.yellow,
                      ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  // it put shadow first
                  backgroundBlendMode: BlendMode.darken,
                  // for image
                  //image:
                  // not applicable for circle
                  //borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
