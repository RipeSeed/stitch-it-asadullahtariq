import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/widgets/DurationWidget.dart';
import 'package:practice/widgets/floating_action_button.dart';
import 'package:provider/provider.dart';

class StitchingDuration extends StatefulWidget {
  final Function nextButtonFunction;
  final Function backButtonFunction;
  const StitchingDuration(
      {super.key,
      required this.nextButtonFunction,
      required this.backButtonFunction});

  @override
  State<StitchingDuration> createState() => _StitchingDurationState();
}

class _StitchingDurationState extends State<StitchingDuration> {
  int selectedIndex = 3;
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
                      .map(
                        (e) => DurationWidget(
                          item: e.value,
                          current: selectedIndex,
                          index: e.key,
                          onPressedFunction: (int id) {
                            setState(() {
                              selectedIndex = id;
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          BackAndForthActionButton(
              leftButton: true,
              rightButton: true,
              leftFunction: () {
                Provider.of<StitchingModal>(context, listen: false)
                    .setStitchingDuration("");
                widget.backButtonFunction();
              },
              rightFunction: () {
                Provider.of<StitchingModal>(context, listen: false)
                    .setStitchingDuration(data[selectedIndex]);
                widget.nextButtonFunction();
              })
        ],
      ),
    );
  }
}
