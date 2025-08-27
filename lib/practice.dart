import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/demo.webp',
                height: 200,
                width: 350,
                semanticLabel: 'Thailand',
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 50,),
            
            ElevatedButton(onPressed: (){}, child: Text('Click'))
          ],
        ),
      ),
    );
  }
}
