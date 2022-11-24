import 'package:flutter/material.dart';

class StitchingPrice extends StatefulWidget {
  final Function onPressedFunction;
  const StitchingPrice({super.key, required this.onPressedFunction});

  @override
  State<StitchingPrice> createState() => _StitchingPriceState();
}

class _StitchingPriceState extends State<StitchingPrice> {
  var rangeValue = RangeValues(5, 22000);
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
                  const Center(
                    child: Text(
                      "PKR 5 - 22,000",
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
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.075, left: 25),
            child: const Text("Press next to skip without selection."),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => widget.onPressedFunction(),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
