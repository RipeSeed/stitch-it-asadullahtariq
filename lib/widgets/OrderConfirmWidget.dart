import 'package:flutter/material.dart';

class OrderConfirmationTextWidget extends StatelessWidget {
  final String value;
  final String keyId;
  const OrderConfirmationTextWidget(
      {super.key, required this.value, required this.keyId});

  @override
  Widget build(BuildContext context) {
    final styl = TextStyle(color: Colors.grey[400]);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: styl,
          ),
          const SizedBox(
            width: 33,
          ),
          Text(
            keyId,
            style: styl,
          ),
        ],
      ),
    );
  }
}
