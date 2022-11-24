import 'package:flutter/material.dart';
import 'package:practice/widgets/DurationWidget.dart';

class StitchingDuration extends StatelessWidget {
  final Function onPressedFunction;
  const StitchingDuration({super.key, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    var data = ["3 days", "5 days", "7 days", "10 days", "15 days"];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "I want it within...",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 61),
                child: Wrap(
                  spacing: 15, //vertical spacing
                  runSpacing: 8, //horizontal spacing
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: (data)
                      .asMap()
                      .entries
                      .map((e) => DurationWidget(
                            item: e.value,
                            current: 3,
                            index: e.key,
                            onPressedFunction: onPressedFunction,
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
