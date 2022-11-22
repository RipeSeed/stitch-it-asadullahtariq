import 'package:flutter/material.dart';
import 'package:practice/widgets/OrderStatusWidget.dart';

class OrderStatus extends StatelessWidget {
  final int current;

  const OrderStatus({super.key, required this.current});

  @override
  Widget build(BuildContext context) {
    var data = [
      {"id": "1", "name": "stitch for", "icon": 0xe497},
      {"id": "2", "name": "Order", "icon": 0xf04dc},
      {"id": "3", "name": "Payment", "icon": 0xe493},
      {"id": "4", "name": "Delivery", "icon": 0xe15a}
    ];

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 80,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...(data)
                      .asMap()
                      .entries
                      .map((item) => OrderStatusWidget(
                          index: item.key,
                          current: current,
                          iconId: (item.value["icon"]! as int),
                          statusName: item.value["name"].toString()))
                      .toList()
                ],
              ) // all the children is making an error
              ),
        ),
      ],
    );
  }
}