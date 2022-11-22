import 'package:flutter/material.dart';
import 'package:practice/Models/TailerModel.dart';
import 'package:practice/widgets/StarRating.dart';

class TailerWidgetRow extends StatelessWidget {
  final TailerModel tailerModel;

  const TailerWidgetRow({super.key, required this.tailerModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: SizedBox(
        height: 171,
        width: 160,
        child: ElevatedButton(
          onPressed: () => print("I pressed"),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(color: Colors.grey[300]!, width: 2)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
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
                  height: 10,
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
                  height: 5,
                ),
                Text(
                  "PKR ${tailerModel.price}-Days ${tailerModel.days}",
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
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
