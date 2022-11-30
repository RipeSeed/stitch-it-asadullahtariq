import 'package:flutter/material.dart';

class StitchingWidget extends StatelessWidget {
  final String item;
  final int index;
  final int current;
  final Function onPressedFunction;
  const StitchingWidget(
      {super.key,
      required this.item,
      required this.index,
      required this.current,
      required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        child: TextButton(
          onPressed: () => onPressedFunction(index),
          style: ButtonStyle(
              alignment: Alignment.centerLeft,
              backgroundColor: MaterialStateProperty.all<Color>(index == current
                  ? Colors.deepOrange[100]!
                  : Colors.grey[50]!),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Text(
              item,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: current == index ? Colors.deepOrange[300] : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
