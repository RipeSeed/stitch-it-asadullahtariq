import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final String title;
  final Function onPressFunction;
  const OrderButton(
      {super.key,
      required this.title,
      required this.onPressFunction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 64,
      child: ElevatedButton(
        // ignore: avoid_print
        onPressed: onPressFunction(),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
