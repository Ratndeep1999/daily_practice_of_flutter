import 'package:flutter/material.dart';

class IconRichtextCircleavatar extends StatelessWidget {
  const IconRichtextCircleavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              CircleAvatar()
            ],
          ),
      ),
    );
  }
}
