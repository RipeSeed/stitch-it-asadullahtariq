import 'package:flutter/material.dart';
import 'package:practice/widgets/OrderSttaus.dart';

class StitchingPrice extends StatefulWidget {
  const StitchingPrice({super.key});

  @override
  State<StitchingPrice> createState() => _StitchingPriceState();
}

class _StitchingPriceState extends State<StitchingPrice> {
  var rangeValue = RangeValues(5, 22000);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        toolbarHeight: 30,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OrderStatus(current: 1),
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
          )
        ],
      ),
    );
  }
}
