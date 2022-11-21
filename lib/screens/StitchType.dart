import 'package:flutter/material.dart';
import 'package:practice/widgets/StitchingWidget.dart';

import '../widgets/OrderSttaus.dart';

class StitchingType extends StatelessWidget {
  const StitchingType({super.key});

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
                    item: data[index], index: index, current: 0),
              ),
            )
          ],
        ));
  }
}
