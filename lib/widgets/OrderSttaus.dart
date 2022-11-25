import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/widgets/OrderStatusWidget.dart';
import 'package:provider/provider.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key});

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    var data = [
      {"id": "1", "name": "stitch for", "icon": 0xe497},
      {"id": "2", "name": "Order", "icon": 0xf04dc},
      {"id": "3", "name": "Payment", "icon": 0xe493},
      {"id": "4", "name": "Delivery", "icon": 0xe15a}
    ];

    return Material(
      color: Colors.grey[50],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Consumer<StitchingModal>(
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...(data)
                      .asMap()
                      .entries
                      .map((item) => OrderStatusWidget(
                          index: item.key,
                          current: value.stitchingStatus,
                          iconId: (item.value["icon"]! as int),
                          statusName: item.value["name"].toString()))
                      .toList()
                ],
              );
            },
          ),
        ), // all the children is making an error
      ),
    );
  }
}
