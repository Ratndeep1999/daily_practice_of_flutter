import 'package:flutter/material.dart';

class Gradients extends StatelessWidget {
  const Gradients({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Container of LinearGradient
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.red, Colors.green],
                      stops: [0.2, 0.5, 1.0],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                // Container with RadialGradient
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [Colors.orange, Colors.deepPurple],
                      stops: [0.3, 1.0],
                      center: Alignment.center,
                      radius: 0.8,
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                // Sweep Gradient container
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    gradient: SweepGradient(
                      colors: [Colors.pink, Colors.yellow, Colors.blue, Colors.pink],
                      stops: [0.0, 0.3, 0.7, 1.0],
                      center: Alignment.center,
                      startAngle: 0.0,
                      endAngle: 3.14, // Half circle
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                //
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Colors.blue, Colors.red, Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  blendMode: BlendMode.srcIn,
                  child: Text(
                    'Flutter Shader',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // must set color for ShaderMask
                    ),
                  ),
                )







              ],
            ),
          ),
        ),
      ),
    );
  }
}
