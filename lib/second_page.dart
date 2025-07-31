import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: TextField(
              //     controller: _ageController,
              //     keyboardType: TextInputType.number,
              //   ),
              // ),
              SizedBox(height: 30,),
              // Text(
              //   'Hello My Self $firstName $lastName ',
              //   style: TextStyle(fontSize: 30, letterSpacing: 5.5),
              // ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/thirdPage');
                    },
                    child: Text('Replace'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/thirdPage');
                    },
                    child: Text('Next page'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
