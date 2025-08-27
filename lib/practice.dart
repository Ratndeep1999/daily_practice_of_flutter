import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
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
                  height: 200,
                  width: 350,
                  semanticLabel: 'Thailand',
                  'https://wallpaperaccess.com/full/150575.jpg',
                  loadingBuilder: (context, child, progress) {
                    return progress == null ? child : LinearProgressIndicator();
                  },
                ),
                child: Image.asset(
                  'assets/images/demo.webp',
                  height: 200,
                  width: 350,
                  semanticLabel: 'Thailand',
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

            SizedBox(height: 50,),
            Image.network(
              'https://wallpaperaccess.com/full/395413.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
