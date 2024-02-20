import 'package:flutter/material.dart';

class OrderConfirmationAlertDialog extends StatelessWidget {
  const OrderConfirmationAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: ((context) => AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(24.0),
              ),
            ),
            title: const Text(
              "Order Placed Successfully",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  const Text(
                    'Order #4520',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                      ),
                      'You order has been placed successfully. You will be notified when your tailor accepts the order. After that, you will need to pay in advance for further processing on your order.Please note that tailor can reject your order on his will and you will need to choose the tailor again.'),
                ],
              ),
            ),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "OK",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
