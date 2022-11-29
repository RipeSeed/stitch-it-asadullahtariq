// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;

  const StarRating(
      {super.key,
      this.starCount = 5,
      this.rating = .0,
      required this.onRatingChanged,
      required this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        // ignore: deprecated_member_use
        color: Theme.of(context).buttonColor,
        size: 15,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color,
        size: 15,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color,
        size: 15,
      );
    }
    return new InkResponse(
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
        children:
            new List.generate(starCount, (index) => buildStar(context, index)));
  }
}
