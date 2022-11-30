import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/widgets/floating_action_button.dart';
import 'package:provider/provider.dart';

class StitchingPrice extends StatefulWidget {
  final Function nextButtonFunction;
  final Function backButtonFunction;
  const StitchingPrice({
    super.key,
    required this.nextButtonFunction,
    required this.backButtonFunction,
  });

  @override
  State<StitchingPrice> createState() => _StitchingPriceState();
}

class _StitchingPriceState extends State<StitchingPrice> {
  var rangeValue = const RangeValues(5, 22000);
  @override
  Widget build(BuildContext context) {
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
              "Choose price range.",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "PKR ${rangeValue.start.toInt()} - ${rangeValue.end.toInt()}",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                  ),
                  RangeSlider(
                    min: 5,
                    max: 22000,
                    values: rangeValue,
                    onChanged: (value) => setState(() {
                      rangeValue = value;
                    }),
                    divisions: 10,
                  ),
                ],
              ),
            ),
          ),
          BackAndForthActionButton(
              leftButton: true,
              rightButton: true,
              leftFunction: () {
                Provider.of<StitchingModal>(context, listen: false)
                    .setStitichingPrice("");
                widget.backButtonFunction();
              },
              rightFunction: () {
                String price = rangeValue.start.toInt().toString();
                price += "-";
                price += rangeValue.end.toInt().toString();
                Provider.of<StitchingModal>(context, listen: false)
                    .setStitichingPrice(price);
                widget.nextButtonFunction();
              })
        ],
      ),
    );
  }
}
