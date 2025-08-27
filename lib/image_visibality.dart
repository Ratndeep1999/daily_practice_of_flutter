import 'package:flutter/material.dart';

class ImageVisibility extends StatefulWidget {
  const ImageVisibility({super.key});

  @override
  State<ImageVisibility> createState() => ImageVisibilityState();
}

class ImageVisibilityState extends State<ImageVisibility> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Visibility(
                visible: isVisible,
                replacement: Image.network(
                  'https://wallpaperaccess.com/full/150575.jpg',
                  loadingBuilder: (context, child, progress) {
                    return progress == null ? child : LinearProgressIndicator();
                  },
                ),
                child: Image.asset(
                  'assets/images/demo.webp',
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.colorBurn,
                ),
              ),
            ),

            SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !(isVisible);
                });
              },
              child: Text('Click'),
            ),

            SizedBox(height: 50),
            Image.network(
              'https://wallpaperaccess.com/full/395413.jpg',
              height: 200,
              width: 350,
              semanticLabel: 'Thailand',
              loadingBuilder: (context, child, progress) {
                return progress == null ? child : LinearProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
