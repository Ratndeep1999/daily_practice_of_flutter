import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class ImageShaderText extends StatefulWidget {
  @override
  _ImageShaderTextState createState() => _ImageShaderTextState();
}

class _ImageShaderTextState extends State<ImageShaderText> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    final imageProvider = AssetImage("assets/images/square_pic2.jpg");
    final completer = Completer<ui.Image>();
    imageProvider.resolve(ImageConfiguration()).addListener(
      ImageStreamListener((info, _) {
        completer.complete(info.image);
      }),
    );
    final loadedImage = await completer.future;
    setState(() {
      image = loadedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: image == null
            ? CircularProgressIndicator()
            : Text(
          "Flutter",
          style: TextStyle(
            fontSize: 500,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..shader = ImageShader(
                image!,
                TileMode.clamp, // try clamp if you don’t want repeat
                TileMode.clamp,
                Matrix4.identity()
                    .scaled(0.5, 0.5) // zoom IN to the image instead of stretching
                    .storage,
              ),
          ),
        ),

      ),
    );
  }
}
