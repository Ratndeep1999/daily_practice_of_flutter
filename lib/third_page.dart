import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  ThirdPage({super.key, });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigation'),
          centerTitle: true,
        backgroundColor: Colors.orange.shade100,
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello My Self  years old',
                  style: TextStyle(fontSize: 30, letterSpacing: 5.5),
                ),
                SizedBox(height: 30,),

                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    }
                , child: Text('Back')),
              ],
            ),
          ),
      ),
    );
  }
}
