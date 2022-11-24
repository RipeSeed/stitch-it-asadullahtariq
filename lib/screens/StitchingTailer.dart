import 'package:flutter/material.dart';
import 'package:practice/Models/TailerModel.dart';
import 'package:practice/widgets/TailerWidget.dart';
import 'package:practice/widgets/TailerWidgetColumn.dart';

import '../widgets/OrderSttaus.dart';

class StitchingTailer extends StatelessWidget {
  const StitchingTailer({super.key});

  @override
  Widget build(BuildContext context) {
    final tailerRow = List.generate(
      5,
      ((index) => TailerModel(
            price: 500,
            rating: 4,
            name: "Muhammad Azhar Hussain",
            imagePath: "assets/images/TailerA.png",
            address: "Lahore, Pakistan",
            days: 3,
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Choose tailor",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tailerRow.length,
              itemBuilder: (context, index) =>
                  TailerWidgetRow(tailerModel: tailerRow[index]),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.grey[300],
              child: ListView.builder(
                itemCount: tailerRow.length,
                itemBuilder: (context, index) =>
                    TailerWidgetColumn(tailerModel: tailerRow[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
