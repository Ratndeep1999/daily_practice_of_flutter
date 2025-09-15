import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: ShaderCircle(),
      ),
    ),
  ));
}

class ShaderCircle extends StatefulWidget {
  const ShaderCircle({super.key});

  @override
  State<ShaderCircle> createState() => _ShaderCircleState();
}

class _ShaderCircleState extends State<ShaderCircle> {
  ui.Image? _image;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    final completer = Completer<ui.Image>();
    final imageProvider = const NetworkImage("https://picsum.photos/300");

    imageProvider.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener((ImageInfo info, bool _) {
        completer.complete(info.image);
      }),
    );

    final img = await completer.future;
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(300, 300),
      painter: MyPainter(_image),
    );
  }
}

class MyPainter extends CustomPainter {
  final ui.Image? image;

  MyPainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    if (image == null) return; // Image not loaded yet

    final paint = Paint()
      ..shader = ImageShader(
        image!,
        TileMode.repeated, // repeat horizontally
        TileMode.repeated, // repeat vertically
        Matrix4.identity().storage,
      );

    // Draw a circle filled with the image pattern
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 300, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
