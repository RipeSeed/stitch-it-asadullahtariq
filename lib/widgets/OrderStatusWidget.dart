import 'package:flutter/material.dart';

class OrderStatusWidget extends StatelessWidget {
  final int iconId;
  final String statusName;
  final int index;
  final int current;

  const OrderStatusWidget(
      {super.key,
      required this.iconId,
      required this.statusName,
      required this.index,
      required this.current});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          SizedBox(
            height: 48,
            width: 48,
            child: Container(
              decoration: BoxDecoration(
                color: current == index ? Colors.deepOrange[400] : null,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(
                IconData(
                  iconId,
                  fontFamily: 'MaterialIcons',
                ),
                color: index == current ? Colors.white : Colors.deepOrange[200],
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            statusName,
            style: TextStyle(
                color: current == index ? Colors.black : Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}
