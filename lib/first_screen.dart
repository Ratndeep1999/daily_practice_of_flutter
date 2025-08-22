import 'package:daily_practice/routes/named_routes.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  void initState() {
    super.initState();
    debugPrint('1st initState method...');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('1st did_change_dependencies method...');
  }

  @override
  void didUpdateWidget(covariant FirstScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('1st did_update_widget method...');
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    debugPrint('1st set_state method...');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('1st deactivate method...');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('1st dispose method...');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('1st Build method...');

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'First Screen',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(kSecondScreen);
                },
                highlightColor: Colors.transparent,
                splashRadius: 0.50,
                icon: Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 80,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
