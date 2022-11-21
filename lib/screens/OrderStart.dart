// ignore: file_names
import 'package:flutter/material.dart';
import 'package:practice/widgets/GenderButton.dart';
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
          children: [
            const OrderStatus(current: 0),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Stitch for",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 42, bottom: 42),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GenderButton(
                            path: "assets/images/Male.png",
                            backColor: Colors.deepOrange[100]!,
                            bordderColor: Colors.deepOrange[100]!,
                          ),
                          GenderButton(
                            path: "assets/images/Female.png",
                            backColor: Colors.white,
                            bordderColor: Colors.grey[300]!,
                          ),
                        ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "This helps us modify the order process according to the selection you make.",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
