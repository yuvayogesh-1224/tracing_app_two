import 'package:flutter/material.dart';
import '../utils/kid_colors.dart';

class StarRatingWidget extends StatelessWidget {
  final int stars;
  final double starSize;

  StarRatingWidget({
    Key? key,
    required this.stars,
    this.starSize = 36.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (index) {
        final isFilled = index < stars;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0),
          child: Icon(
            Icons.star_rounded,
            size: starSize,
            color: isFilled ? KidColors.sunnyAmber : Colors.grey.shade300,
          ),
        );
      }),
    );
  }
}
