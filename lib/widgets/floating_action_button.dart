import 'package:flutter/material.dart';

class BackAndForthActionButton extends StatelessWidget {
  final bool leftButton;
  final bool rightButton;
  final Function leftFunction;
  final Function rightFunction;
  const BackAndForthActionButton(
      {super.key,
      required this.leftButton,
      required this.rightButton,
      required this.leftFunction,
      required this.rightFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 30),
      child: Stack(
        children: <Widget>[
          Visibility(
            visible: leftButton,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: (() => leftFunction()),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Visibility(
            visible: rightButton,
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                  onPressed: (() => rightFunction()),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
