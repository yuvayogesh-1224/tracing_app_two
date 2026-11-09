import 'dart:ui';

class TracingPoint {
  final double x;
  final double y;

  TracingPoint(this.x, this.y);

  Offset toOffset(Size size, {double padding = 32.0}) {
    final availableWidth = size.width - (padding * 2);
    final availableHeight = size.height - (padding * 2);
    return Offset(
      padding + (x * availableWidth),
      padding + (y * availableHeight),
    );
  }
}

class TracingStroke {
  final int id;
  final List<TracingPoint> points;
  final String instruction;

  TracingStroke({
    required this.id,
    required this.points,
    required this.instruction,
  });
}

class TracingItem {
  final String id;
  final String title;
  final String category;
  final String difficulty;
  final String funFact;
  final String iconSymbol;
  final List<TracingStroke> strokes;

  TracingItem({
    required this.id,
    required this.title,
    required this.category,
    required this.difficulty,
    required this.funFact,
    required this.iconSymbol,
    required this.strokes,
  });
}

class TracingResult {
  final int stars;
  final double accuracy;
  final bool isCompleted;

  TracingResult({
    required this.stars,
    required this.accuracy,
    required this.isCompleted,
  });
}
