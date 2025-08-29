import 'package:flutter/material.dart';

class IconRichtextCircleavatar extends StatelessWidget {
  const IconRichtextCircleavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.yellowAccent,
                maxRadius: 130,
                // color of child content
                //foregroundColor: Colors.red,
                minRadius: 50,
                backgroundImage: AssetImage('assets/images/demo.webp'),
                //foregroundImage: AssetImage('assets/images/demo.webp'),
                // backgroundImage: NetworkImage(
                //    'https://tse2.mm.bing.net/th/id/OIP.9Hsj4_O03n2vX0Bcy3-u-gHaEo?rs=1&pid=ImgDetMain&o=7&rm=3',
                //  ),
                // onBackgroundImageError: (error, stackTrace) {
                //   print("Image failed to load: $error");
                // },
                child: Icon(
                  Icons.house,
                  size: 100,
                  semanticLabel: 'Home',
                  weight: 0.5,
                  opticalSize: 1.0,
                  textDirection: TextDirection.rtl,
                  fill: 0.0,
                  color: Colors.red,
                  //blendMode: BlendMode.darken,
                  grade: 0.0,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.black45,
                      offset: Offset(40.5, 30.5),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 50),

            RichText(
              textAlign: TextAlign.center,
              selectionColor: Colors.white,
              overflow: TextOverflow.ellipsis,
              textHeightBehavior: TextHeightBehavior(
                applyHeightToLastDescent: false,
              ),
              textDirection: TextDirection.rtl,
              text: TextSpan(
                style: TextStyle(
                  // primary scope of text style
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: 'Hello ',
                    // secondary scope of text style
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Have ',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(text: 'a '),
                  TextSpan(
                    text: 'Good ',
                    style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  //
                  TextSpan(text: 'Day'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
