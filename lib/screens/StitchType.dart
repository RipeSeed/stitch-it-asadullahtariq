import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/widgets/StitchingWidget.dart';
import 'package:provider/provider.dart';

class StitchingType extends StatelessWidget {
  final Function onPressedFunction;
  const StitchingType({super.key, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    final List data = [
      "Alteration",
      "2 piece suit",
      "Kurta shirt",
      "Shalwar",
      "Trouser",
      "Waist Coat",
      "Collar shirt"
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
            "I want to stitch a...",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => StitchingWidget(
              item: data[index],
              index: index,
              current: 0,
              onPressedFunction: () {
                Provider.of<StitchingModal>(context, listen: false)
                    .setStitchingType(data[index]);
                onPressedFunction();
              },
            ),
          ),
        )
      ],
    ));
  }
}
