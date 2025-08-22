import 'dart:math';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Third Screen',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 40),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return RandomColorItems(
                      randomColor: _randomColor(),
                      index: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // method to create random color
  Color _randomColor() {
    debugPrint(Random().nextInt(50).toString());
    Color randomColor = Color(Random().nextInt(0xFF000000));
    debugPrint(randomColor.toString());
    return randomColor;
  }
}

class RandomColorItems extends StatefulWidget {
  const RandomColorItems({
    super.key,
    required this.randomColor,
    required this.index,
  });

  final Color randomColor;
  final int index;

  @override
  State<RandomColorItems> createState() => _RandomColorItemsState();
}

class _RandomColorItemsState extends State<RandomColorItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: widget.randomColor,
        ),
        child: Center(
          child: Text(
            widget.index.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
