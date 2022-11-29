import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/widgets/StitchingWidget.dart';
import 'package:provider/provider.dart';

class StitchingSize extends StatelessWidget {
  final Function onPressedFunction;
  const StitchingSize({super.key, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    final List data = [
      "My size",
      "Ahmed’s size",
      "Enter different size",
    ];
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
            "Choose size.",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 51, bottom: 15),
          child: Text(
            "Your presets",
            style: TextStyle(color: Colors.grey[500]),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) => StitchingWidget(
            item: data[index],
            index: index,
            current: 0,
            onPressedFunction: () {
              Provider.of<StitchingModal>(context, listen: false)
                  .setStitchingSize(data[index]);
              onPressedFunction();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 51, bottom: 15),
          child: Text(
            "OR",
            style: TextStyle(color: Colors.grey[500]),
          ),
        ),
        StitchingWidget(
          item: "Pick reference dress from my address",
          index: 1,
          current: 0,
          onPressedFunction: () {
            Provider.of<StitchingModal>(context, listen: false)
                .setStitchingSize("Pick reference dress from my address");
            onPressedFunction();
          },
        ),
      ],
    ));
  }
}
