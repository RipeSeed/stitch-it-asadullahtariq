import 'package:flutter/material.dart';
import 'package:practice/Models/TailerModel.dart';
import 'package:practice/Models/TailerProfileArguments.dart';
import 'package:practice/widgets/StarRating.dart';
import '../utils/MyRoutes.dart';

class TailerWidgetRow extends StatelessWidget {
  final TailerModel tailerModel;
  final Function onConfirmPressed;

  const TailerWidgetRow({super.key, required this.tailerModel, required this.onConfirmPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: SizedBox(
        height: 171,
        width: 160,
        child: ElevatedButton(
          onPressed: (() => Navigator.pushNamed(
                context,
                MyRoutes.TailerProfile,
                arguments: TailerProfileArguments(tailerModel,onConfirmPressed),
              )),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(color: Colors.grey[300]!, width: 1)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  tailerModel.imagePath,
                  height: 48,
                  width: 48,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  tailerModel.name,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.2),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "PKR ${tailerModel.price}-Days ${tailerModel.days}",
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
                const SizedBox(
                  height: 2,
                ),
                StarRating(
                    rating: tailerModel.rating,
                    onRatingChanged: (rating) => print("hello"),
                    color: Colors.deepOrange[700]!)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
