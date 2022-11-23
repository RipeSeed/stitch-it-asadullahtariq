import 'package:flutter/material.dart';
import 'package:practice/widgets/TitileAndValue.dart';

class TailerDetail extends StatelessWidget {
  final int iconId;
  final String value;
  final String title;
  const TailerDetail(
      {super.key,
      required this.iconId,
      required this.value,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 168,
      height: 136,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
          border: Border.all(color: Colors.grey[200]!, width: 1),
        ),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          value,
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "out of 5",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[300],
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36),
                          color: Colors.deepOrange[200],
                        ),
                        child: Icon(
                          IconData(
                            iconId,
                            fontFamily: 'MaterialIcons',
                          ),
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
