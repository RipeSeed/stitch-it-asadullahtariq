import 'package:flutter/material.dart';

class StitchingWidget extends StatelessWidget {
  final String item;
  final int index;
  final int current;
  const StitchingWidget(
      {super.key,
      required this.item,
      required this.index,
      required this.current});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
          color: index == current ? Colors.deepOrange[100] : Colors.grey[50]),
      child: Padding(
        padding: const EdgeInsets.only(left: 27, top: 15, bottom: 15),
        child: Text(
          item,
          style: TextStyle(
              color: current == index ? Colors.deepOrange[300] : Colors.black),
        ),
      ),
    );
  }
}
