// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:practice/Models/TailerProfileArguments.dart';
import 'package:practice/widgets/BottomSheet.dart';
import 'package:practice/widgets/TailerDetailWidget.dart';
import 'package:practice/widgets/TitileAndValue.dart';

class TailerProfile extends StatefulWidget {
  const TailerProfile({super.key});

  @override
  State<TailerProfile> createState() => _TailerProfileState();
}

class _TailerProfileState extends State<TailerProfile> {
  @override
  Widget build(BuildContext context) {
    final arg =
        ModalRoute.of(context)!.settings.arguments as TailerProfileArguments;

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
                  arg.tailerModel.imagePath,
                  height: 73,
                  width: 73,
                ),
                title: Text(
                  arg.tailerModel.name,
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.2),
                ),
                subtitle: Text(
                  "PKR ${arg.tailerModel.price}-Days ${arg.tailerModel.days}",
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TitleAndValue(
                    title: "Rating",
                    value: arg.tailerModel.rating.toString(),
                  ),
                  TitleAndValue(
                      title: "Orders", value: arg.tailerModel.oders.toString()),
                  TitleAndValue(
                      title: "Years", value: arg.tailerModel.years.toString()),
                ],
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
                children: [
                  TailerDetail(
                    iconId: 0xe3e0,
                    value: arg.tailerModel.communication.toString(),
                    title: "Excellent Communication",
                  ),
                  TailerDetail(
                    iconId: 0xe3e0,
                    value: arg.tailerModel.delieveryTime.toString(),
                    title: "Great Delivery Time",
                  ),
                  TailerDetail(
                    iconId: 0xe3e0,
                    value: arg.tailerModel.goodQuality.toString(),
                    title: "Good Quality",
                  ),
                  TailerDetail(
                    iconId: 0xe3e0,
                    value: arg.tailerModel.responceTime.toString(),
                    title: "Great Response Time",
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Builder(builder: (context) {
              return ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)))),
                onPressed: () => {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    context: context,
                    builder: (context) => BottomSheetWidget(
                      onConfirmPressed: arg.onConfirmPressed,
                    ),
                    isScrollControlled: true,
                  )
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 56,
                  child: const Center(
                    child: Text(
                      "Select this Tailor",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
