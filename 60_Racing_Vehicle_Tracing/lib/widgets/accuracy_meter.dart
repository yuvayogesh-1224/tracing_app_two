import 'package:flutter/material.dart';
import '../utils/kid_colors.dart';

class AccuracyMeter extends StatelessWidget {
  final double progress;
  final double accuracy;

  AccuracyMeter({
    Key? key,
    required this.progress,
    required this.accuracy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: KidColors.blueBorder, width: 1.5),
      ),
      child: Row(
        children: [
          Icon(Icons.flash_on_rounded, color: KidColors.sunnyAmber, size: 22.0),
          SizedBox(width: 6.0),
          Text(
            '${progress.clamp(0, 100).toInt()}%',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: KidColors.deepNavy,
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: LinearProgressIndicator(
                value: (progress / 100.0).clamp(0.0, 1.0),
                minHeight: 12.0,
                backgroundColor: KidColors.softBlue,
                valueColor: AlwaysStoppedAnimation<Color>(KidColors.emeraldGreen),
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Icon(Icons.track_changes_rounded, color: KidColors.coralPink, size: 20.0),
          SizedBox(width: 4.0),
          Text(
            '${accuracy.toInt()}%',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: KidColors.deepNavy,
            ),
          ),
        ],
      ),
    );
  }
}
