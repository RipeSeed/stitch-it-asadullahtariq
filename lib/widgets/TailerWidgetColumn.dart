import 'package:flutter/material.dart';
import 'package:practice/Models/TailerModel.dart';
import 'package:practice/Models/TailerProfileArguments.dart';
import 'package:practice/Models/product.dart';
import 'package:practice/utils/MyRoutes.dart';
import 'package:practice/widgets/StarRating.dart';

class TailerWidgetColumn extends StatelessWidget {
  final TailerModel tailerModel;
  final Function onConfirmPressed;

  const TailerWidgetColumn(
      {super.key, required this.tailerModel, required this.onConfirmPressed});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => Navigator.pushNamed(
        context,
        MyRoutes.TailerProfile,
        arguments: TailerProfileArguments(tailerModel, onConfirmPressed),
      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(1, 0, 1, 1.5),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: ListTile(
            leading: Image.asset(tailerModel.imagePath),
            title: Text(
              tailerModel.name,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.2),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PKR ${tailerModel.price}-Days ${tailerModel.days}",
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
                StarRating(
                  rating: tailerModel.rating,
                  onRatingChanged: (rating) => print("hello"),
                  color: Colors.deepOrange[700]!,
                ),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(tailerModel.address,
                    style: TextStyle(color: Colors.grey[500], fontSize: 12))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
