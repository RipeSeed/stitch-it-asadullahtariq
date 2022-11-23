import 'package:flutter/material.dart';

class TitleAndValue extends StatelessWidget {
  final String title;
  final String value;
  const TitleAndValue({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 12,
              color: Colors.grey[300],
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
