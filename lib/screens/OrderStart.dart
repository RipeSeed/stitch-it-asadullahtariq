// ignore: file_names
import 'package:flutter/material.dart';
import 'package:practice/widgets/OrderSttaus.dart';

// ignore: must_be_immutable
class OrderStart extends StatelessWidget {
  const OrderStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          toolbarHeight: 30,
        ),
        body: Column(
          children: const [OrderStatus(current: 0)],
        ));
  }
}
