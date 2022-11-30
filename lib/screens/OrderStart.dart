// ignore: file_names
import 'package:flutter/material.dart';
import 'package:practice/StitchingDetail/ViewModals/view_modal_stitching.dart';
import 'package:practice/widgets/GenderButton.dart';
import 'package:practice/widgets/floating_action_button.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class OrderStart extends StatefulWidget {
  final Function nextPage;
  const OrderStart({super.key, required this.nextPage});

  @override
  State<OrderStart> createState() => _OrderStartState();
}

class _OrderStartState extends State<OrderStart> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                          onPressedFunction: () {
                            setState(() {
                              flag = true;
                            });
                          },
                          stitchingFor: 'Male',
                          flag: flag,
                        ),
                        GenderButton(
                          path: "assets/images/Female.png",
                          onPressedFunction: () {
                            setState(() {
                              flag = false;
                            });
                          },
                          stitchingFor: 'Female',
                          flag: !flag,
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "This helps us modify the order process according to the selection you make.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
          BackAndForthActionButton(
              leftButton: false,
              rightButton: true,
              leftFunction: () {},
              rightFunction: () {
                Provider.of<StitchingModal>(context, listen: false)
                    .setStitichingFor(flag ? "Male" : "Female");
                widget.nextPage();
              })
        ],
      ),
    );
  }
}
