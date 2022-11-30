import 'package:flutter/material.dart';

class DurationWidget extends StatelessWidget {
  final String item;
  final int current;
  final int index;
  final Function onPressedFunction;
  const DurationWidget({
    super.key,
    required this.item,
    required this.current,
    required this.index,
    required this.onPressedFunction,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (() => onPressedFunction(index)),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: current == index
                  ? Colors.deepOrange[400]!
                  : Colors.grey[300]!,
            ),
          ),
        ),
        backgroundColor: current == index
            ? MaterialStateProperty.all<Color>(
                Colors.deepOrange[100]!,
              )
            : MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Text(item,
            style: TextStyle(
                fontSize: 10,
                color:
                    current == index ? Colors.deepOrange[400] : Colors.black)),
      ),
    );
  }
}
