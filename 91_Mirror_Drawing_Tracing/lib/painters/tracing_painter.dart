import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../models/tracing_item.dart';
import '../utils/kid_colors.dart';

class TracingPainter extends CustomPainter {
  final TracingItem item;
  final int activeStrokeIndex;
  final List<List<Offset>> completedStrokes;
  final List<Offset> currentStrokePoints;
  final Color brushColor;
  final bool isCompleted;

  TracingPainter({
    required this.item,
    required this.activeStrokeIndex,
    required this.completedStrokes,
    required this.currentStrokePoints,
    required this.brushColor,
    required this.isCompleted,
  });

  @override
  void paint(Canvas canvas, Size size) {
    _drawGuideGrid(canvas, size);

    for (int s = 0; s < item.strokes.length; s++) {
      final stroke = item.strokes[s];
      final points = stroke.points.map((p) => p.toOffset(size)).toList();
      if (points.isEmpty) continue;

      final isCurrent = (s == activeStrokeIndex && !isCompleted);
      final isDone = (s < completedStrokes.length);

      _drawGuidePath(canvas, points, isCurrent, isDone);

      if (isCurrent) {
        _drawDirectionalArrows(canvas, points);
        _drawStartPoint(canvas, points.first, s + 1);
        _drawEndPoint(canvas, points.last);
      }
    }

    final finishedPaint = Paint()
      ..color = brushColor.withOpacity(0.85)
      ..strokeWidth = 18.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;

    for (final strokePoints in completedStrokes) {
      if (strokePoints.length > 1) {
        final path = Path()..moveTo(strokePoints.first.dx, strokePoints.first.dy);
        for (int i = 1; i < strokePoints.length; i++) {
          path.lineTo(strokePoints[i].dx, strokePoints[i].dy);
        }
        canvas.drawPath(path, finishedPaint);
      }
    }

    if (currentStrokePoints.length > 1) {
      final activePaint = Paint()
        ..color = brushColor
        ..strokeWidth = 20.0
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round
        ..style = PaintingStyle.stroke;

      final path = Path()..moveTo(currentStrokePoints.first.dx, currentStrokePoints.first.dy);
      for (int i = 1; i < currentStrokePoints.length; i++) {
        path.lineTo(currentStrokePoints[i].dx, currentStrokePoints[i].dy);
      }
      canvas.drawPath(path, activePaint);

      final fingerPaint = Paint()
        ..color = KidColors.sunnyAmber
        ..style = PaintingStyle.fill;
      canvas.drawCircle(currentStrokePoints.last, 14.0, fingerPaint);

      final whiteCenter = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.fill;
      canvas.drawCircle(currentStrokePoints.last, 6.0, whiteCenter);
    }
  }

  void _drawGuideGrid(Canvas canvas, Size size) {
    final bgPaint = Paint()
      ..color = KidColors.softBlue.withOpacity(0.2)
      ..style = PaintingStyle.fill;
    final rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(24.0),
    );
    canvas.drawRRect(rrect, bgPaint);

    final borderPaint = Paint()
      ..color = KidColors.blueBorder.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawRRect(rrect, borderPaint);

    // Draw Center Symmetrical Mirror Axis Line
    final mirrorPaint = Paint()
      ..color = KidColors.primaryPurple.withOpacity(0.6)
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;
    canvas.drawLine(
      Offset(size.width / 2, 8.0),
      Offset(size.width / 2, size.height - 8.0),
      mirrorPaint,
    );
    final mirrorText = TextPainter(
      text: TextSpan(
        text: '🪞 MIRROR AXIS 🪞',
        style: TextStyle(
          color: KidColors.primaryPurple,
          fontSize: 11.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    mirrorText.paint(canvas, Offset((size.width / 2) - (mirrorText.width / 2), 12.0));

  }

  void _drawGuidePath(Canvas canvas, List<Offset> points, bool isCurrent, bool isDone) {
    if (points.length < 2) return;

    final dotPaint = Paint()
      ..color = isDone
          ? KidColors.emeraldGreen.withOpacity(0.5)
          : (isCurrent ? KidColors.primaryPurple.withOpacity(0.4) : KidColors.guideLine)
      ..style = PaintingStyle.fill;

    for (int i = 0; i < points.length - 1; i++) {
      final p1 = points[i];
      final p2 = points[i + 1];
      final dist = (p2 - p1).distance;
      int steps = math.max(1, (dist / 14.0).round());
      for (int step = 0; step <= steps; step++) {
        final t = step / steps;
        final dotPos = Offset(p1.dx + (p2.dx - p1.dx) * t, p1.dy + (p2.dy - p1.dy) * t);
        canvas.drawCircle(dotPos, 4.0, dotPaint);
      }
    }
  }

  void _drawDirectionalArrows(Canvas canvas, List<Offset> points) {
    if (points.length < 2) return;
    final arrowPaint = Paint()
      ..color = KidColors.primaryPurple.withOpacity(0.65)
      ..style = PaintingStyle.fill;

    for (int i = 0; i < points.length - 1; i++) {
      final p1 = points[i];
      final p2 = points[i + 1];
      final mid = Offset((p1.dx + p2.dx) / 2, (p1.dy + p2.dy) / 2);
      final angle = math.atan2(p2.dy - p1.dy, p2.dx - p1.dx);

      final path = Path();
      final arrowSize = 10.0;
      path.moveTo(
        mid.dx + math.cos(angle) * arrowSize,
        mid.dy + math.sin(angle) * arrowSize,
      );
      path.lineTo(
        mid.dx + math.cos(angle + 2.5) * arrowSize,
        mid.dy + math.sin(angle + 2.5) * arrowSize,
      );
      path.lineTo(
        mid.dx + math.cos(angle - 2.5) * arrowSize,
        mid.dy + math.sin(angle - 2.5) * arrowSize,
      );
      path.close();
      canvas.drawPath(path, arrowPaint);
    }
  }

  void _drawStartPoint(Canvas canvas, Offset pos, int strokeNum) {
    final ringPaint = Paint()
      ..color = KidColors.emeraldGreen.withOpacity(0.3)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(pos, 22.0, ringPaint);

    final startPaint = Paint()
      ..color = KidColors.emeraldGreen
      ..style = PaintingStyle.fill;
    canvas.drawCircle(pos, 15.0, startPaint);

    final textSpan = TextSpan(
      text: '$strokeNum',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout();
    textPainter.paint(
      canvas,
      Offset(pos.dx - (textPainter.width / 2), pos.dy - (textPainter.height / 2)),
    );
  }

  void _drawEndPoint(Canvas canvas, Offset pos) {
    final endRing = Paint()
      ..color = KidColors.coralPink.withOpacity(0.25)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(pos, 20.0, endRing);

    final endPaint = Paint()
      ..color = KidColors.coralPink
      ..style = PaintingStyle.fill;
    canvas.drawCircle(pos, 13.0, endPaint);

    final starSpan = TextSpan(
      text: '★',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
    );
    final textPainter = TextPainter(
      text: starSpan,
      textDirection: TextDirection.ltr,
    )..layout();
    textPainter.paint(
      canvas,
      Offset(pos.dx - (textPainter.width / 2), pos.dy - (textPainter.height / 2)),
    );
  }

  @override
  bool shouldRepaint(covariant TracingPainter oldDelegate) => true;
}
