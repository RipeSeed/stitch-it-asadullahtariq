import 'package:flutter/material.dart';
import 'package:practice/widgets/StitchingWidget.dart';

import '../widgets/OrderSttaus.dart';

class StitchingSize extends StatelessWidget {
  const StitchingSize({super.key});

  @override
  Widget build(BuildContext context) {
    final List data = [
      "My size",
      "Ahmed’s size",
      "Enter different size",
    ];
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
              itemBuilder: (context, index) =>
                  StitchingWidget(item: data[index], index: index, current: 0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 51, bottom: 15),
              child: Text(
                "OR",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            const StitchingWidget(
                item: "Pick reference dress from my address",
                index: 1,
                current: 0),
          ],
        ));
  }
}
