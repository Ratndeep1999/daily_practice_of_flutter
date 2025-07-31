import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  // final _firstName = TextEditingController();
  // final _lastName = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Navigation'),
          centerTitle: true,
        backgroundColor: Colors.green.shade100,
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( "Details",
                    style: TextStyle(fontSize: 30, letterSpacing: 5.5),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: TextField(
                  //     controller: _firstName,
                  //   ),
                  // ),
                  // SizedBox(height: 30,),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: TextField(
                  //     controller: _lastName,
                  //   ),
                  // ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/secondPage');
                    }, child: Text("Submit"),
                  )
                ],
            ),
          ),
      ),
    );
  }
}
