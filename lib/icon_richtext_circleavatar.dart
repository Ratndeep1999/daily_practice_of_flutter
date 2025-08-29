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
                //backgroundColor: Colors.yellowAccent,
                maxRadius: 130,
                // color of child content
                foregroundColor: Colors.red,
                minRadius: 50,
                //backgroundImage: AssetImage('assets/images/demo.webp'),
                //foregroundImage: AssetImage('assets/images/demo.webp'),
                //child: Icon(Icons.house, size: 100),
                backgroundImage: NetworkImage(
                  'https://tse2.mm.bing.net/th/id/OIP.9Hsj4_O03n2vX0Bcy3-u-gHaEo?rs=1&pid=ImgDetMain&o=7&rm=3',
                ),
                onBackgroundImageError: (error, stackTrace) {
                  print("Image failed to load: $error");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
