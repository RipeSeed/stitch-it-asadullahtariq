import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/widgets/OrderConfirmWidget.dart';
import 'package:practice/widgets/StarRating.dart';
import 'package:provider/provider.dart';

class StitchingOrderConfirm extends StatelessWidget {
  const StitchingOrderConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 20, 24, 6),
              child: Text(
                "Complete order.",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 27),
              child: Text(
                "Click on any of the steps above to modify your order details.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[400]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.grey[300]!, width: 1),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shipping address",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        ),
                        const Text(
                          "24 J-Street, Shan Colony, Lahore",
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey[400],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Payment",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text("PKR 1200.",
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.fire_truck,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Easy paisa"),
                      )
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      OrderConfirmationTextWidget(
                          value: "800", keyId: "Tailor cost"),
                      OrderConfirmationTextWidget(
                          value: "200", keyId: "Picking reference dress"),
                      OrderConfirmationTextWidget(
                          value: "200", keyId: "Shipping cost"),
                      Text("* Estimated delivery date is 14 Jan, 2020")
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Consumer<StitchingModal>(
                builder: (context, value, child) => ListTile(
                  leading: Image.asset("assets/images/TailerA.png"),
                  title: const Text("name here"),
                  subtitle: StarRating(
                    rating: 4,
                    color: Colors.deepOrange,
                    onRatingChanged: (double rating) {},
                  ),
                  trailing: TextButton(
                      onPressed: () => print("i pressed"),
                      child: const Text("Change")),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 64,
            child: ElevatedButton(
              // ignore: avoid_print
              onPressed: () {
                print("hello there");
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Confirm",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
