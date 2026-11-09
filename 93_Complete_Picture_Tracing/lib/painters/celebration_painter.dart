import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../utils/kid_colors.dart';

class CelebrationPainter extends CustomPainter {
  final double animationProgress;

  CelebrationPainter({required this.animationProgress});

  @override
  void paint(Canvas canvas, Size size) {
    final random = math.Random(42);
    final colors = [
      KidColors.coralPink,
      KidColors.sunnyAmber,
      KidColors.emeraldGreen,
      KidColors.skyCyan,
      KidColors.primaryPurple,
    ];

    for (int i = 0; i < 40; i++) {
      final startX = size.width * (random.nextDouble() * 0.8 + 0.1);
      final speed = random.nextDouble() * 180 + 120;
      final y = (animationProgress * speed + (i * 12)) % size.height;
      final x = startX + math.sin((animationProgress * 6) + i) * 20;

      final paint = Paint()
        ..color = colors[i % colors.length]
        ..style = PaintingStyle.fill;

      if (i % 3 == 0) {
        canvas.drawCircle(Offset(x, y), 5.0, paint);
      } else {
        canvas.drawRect(
          Rect.fromCenter(center: Offset(x, y), width: 8.0, height: 8.0),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CelebrationPainter oldDelegate) => true;
}
