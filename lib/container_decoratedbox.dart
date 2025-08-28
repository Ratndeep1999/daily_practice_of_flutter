import 'package:flutter/material.dart';

class ContainerDecoratedbox extends StatelessWidget {
  const ContainerDecoratedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              height: 250,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade100,
              ),
            )
          ],)),
    );
  }
}
