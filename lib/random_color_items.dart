import 'package:flutter/material.dart';

class RandomColorItems extends StatefulWidget {
  const RandomColorItems({
    super.key,
    required this.randomColor,
    required this.index,
  });

  final Color randomColor;
  final int index;

  @override
  State<RandomColorItems> createState() => _RandomColorItemsState();
}

class _RandomColorItemsState extends State<RandomColorItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: widget.randomColor,
        ),
        child: Center(
          child: Text(
            widget.index.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
