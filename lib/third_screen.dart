import 'dart:math';
import 'package:daily_practice/random_color_items.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key, required this.randomIndex});

  final int randomIndex;

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int updatedCount = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('3rd initState method...');
    debugPrint(widget.randomIndex.toString());
    if (widget.randomIndex < 30) {
      updatedCount = 40 ;
    } else {
      updatedCount =widget.randomIndex;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('3rd did_change_dependencies method...');
  }

  @override
  void didUpdateWidget(covariant ThirdScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('3rd did_update_widget method...');
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    debugPrint('3rd set_state method...');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('3rd deactivate method...');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('3rd dispose method...');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('3rd Build method...');

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
                  itemCount: updatedCount,
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
    // debugPrint(Random().nextInt(50).toString());
    Color randomColor = Color(Random().nextInt(0xFF000000));
    // debugPrint(randomColor.toString());
    return randomColor;
  }
}
