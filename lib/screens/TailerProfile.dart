// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:practice/utils/MyRoutes.dart';
import 'package:practice/widgets/OrderButton.dart';
import 'package:practice/widgets/TailerDetailWidget.dart';
import 'package:practice/widgets/TitileAndValue.dart';

class TailerProfile extends StatelessWidget {
  const TailerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var price = 500;
    var days = 5;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/images/TailerA.png",
                  height: 73,
                  width: 73,
                ),
                title: const Text(
                  "Azhar Hussain",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.2),
                ),
                subtitle: Text(
                  "PKR ${price}-Days ${days}",
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TitleAndValue(
                    title: "Rating",
                    value: "4.5",
                  ),
                  TitleAndValue(title: "Orders", value: "58"),
                  TitleAndValue(title: "Years", value: "2"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(color: Colors.grey[300]!, width: 2),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Have a question? Ask him!",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[300],
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey[300],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                spacing: 27, //vertical spacing
                runSpacing: 20, //horizontal spacing
                children: const [
                  TailerDetail(
                    iconId: 0xe3e0,
                    value: "4.7",
                    title: "Excellent Communication",
                  ),
                  TailerDetail(
                    iconId: 0xe3e0,
                    value: "4.7",
                    title: "Excellent Communication",
                  ),
                  TailerDetail(
                    iconId: 0xe3e0,
                    value: "4.7",
                    title: "Excellent Communication",
                  ),
                  TailerDetail(
                    iconId: 0xe3e0,
                    value: "4.7",
                    title: "Excellent Communication",
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: OrderButton(
                route: MyRoutes.OrderStart, title: "Select this Tailor"),
          )
        ],
      ),
    );
  }
}
