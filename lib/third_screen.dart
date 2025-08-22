import 'dart:math';
import 'package:daily_practice/random_color_items.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {

  @override
  void initState() {
    super.initState();
    debugPrint('initState method...');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('did_change_dependencies method...');
  }

  @override
  void didUpdateWidget(covariant ThirdScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('did_update_widget method...');
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    debugPrint('set_state method...');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('deactivate method...');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('dispose method...');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build method...');

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
    // debugPrint(Random().nextInt(50).toString());
    Color randomColor = Color(Random().nextInt(0xFF000000));
    // debugPrint(randomColor.toString());
    return randomColor;
  }
}
