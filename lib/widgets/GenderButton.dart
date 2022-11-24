import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final String path;
  final Color backColor;
  final Color bordderColor;
  final Function onPressedFunction;
  const GenderButton(
      {super.key,
      required this.path,
      required this.backColor,
      required this.bordderColor,
      required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 196,
      child: OutlinedButton(
          // ignore: avoid_print
          onPressed: () => onPressedFunction(),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    side: BorderSide(width: 1, color: bordderColor)),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(backColor)),
          child: Image.asset(path)),
    );
  }
}
