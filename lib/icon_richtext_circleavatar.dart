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
                    foregroundColor: Colors.red,
                    child: Icon(Icons.house, size: 100,),
                  )
              )
            ],
          ),
      ),
    );
  }
}
