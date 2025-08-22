import 'package:daily_practice/routes/named_routes.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

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
  void didUpdateWidget(covariant SecondScreen oldWidget) {
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Second Screen',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20,),
              // push 
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(kThirdScreen);
                },
                highlightColor: Colors.transparent,
                splashRadius: 0.50,
                icon: Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 80,
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 5,),
              // pop
              RotatedBox(
                quarterTurns: 2,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  highlightColor: Colors.transparent,
                  splashRadius: 0.50,
                  icon: Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 80,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
