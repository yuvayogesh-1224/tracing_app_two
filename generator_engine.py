# generator_engine.py
# Engine for generating full MVVM Flutter Kids Tracing Applications (Projects 51 to 100)

import os
import shutil

TEMPLATES = {
    "models/tracing_item.dart": '''import 'dart:ui';

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
''',

    "models/user_progress.dart": '''class UserProgress {
  final Map<String, int> itemStars;
  final Set<String> completedItemIds;
  final int totalTracedCount;

  UserProgress({
    required this.itemStars,
    required this.completedItemIds,
    required this.totalTracedCount,
  });

  int get totalStars => itemStars.values.fold(0, (sum, val) => sum + val);

  bool isItemCompleted(String itemId) => completedItemIds.contains(itemId);

  int getItemStars(String itemId) => itemStars[itemId] ?? 0;
}
''',

    "utils/kid_colors.dart": '''import 'package:flutter/material.dart';

class KidColors {
  static Color softMint = Color(0xFFE8F5E9);
  static Color mintBorder = Color(0xFFA5D6A7);
  static Color softBlue = Color(0xFFE1F5FE);
  static Color blueBorder = Color(0xFF90CAF9);
  static Color softPink = Color(0xFFFCE4EC);
  static Color pinkBorder = Color(0xFFF48FB1);
  static Color softYellow = Color(0xFFFFFDE7);
  static Color yellowBorder = Color(0xFFFFF59D);
  static Color softLavender = Color(0xFFEDE7F6);
  static Color lavenderBorder = Color(0xFFCE93D8);
  static Color softPeach = Color(0xFFFFF3E0);
  static Color peachBorder = Color(0xFFFFCC80);

  static Color primaryPurple = Color(0xFF7C4DFF);
  static Color coralPink = Color(0xFFFF5252);
  static Color sunnyAmber = Color(0xFFFFB300);
  static Color emeraldGreen = Color(0xFF00C853);
  static Color skyCyan = Color(0xFF00B0FF);
  static Color deepNavy = Color(0xFF283593);

  static Color background = Color(0xFFF9FBFC);
  static Color surface = Color(0xFFFFFFFF);
  static Color textDark = Color(0xFF2D3748);
  static Color textMuted = Color(0xFF718096);
  static Color guideLine = Color(0xFFCFD8DC);
  static Color activeGuide = Color(0xFF4DD0E1);

  static List<Color> brushPalette = [
    Color(0xFFFF5252),
    Color(0xFF7C4DFF),
    Color(0xFF00C853),
    Color(0xFFFFB300),
    Color(0xFF00B0FF),
    Color(0xFFFF4081),
  ];
}
''',

    "services/storage_service.dart": '''import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _keyCompletedList = 'completed_items';
  static const String _keyItemStarsPrefix = 'item_stars_';
  static const String _keySoundEnabled = 'sound_enabled';
  static const String _keyDifficulty = 'difficulty_level';
  static const String _keyBrushColor = 'brush_color_index';

  Future<void> saveItemCompletion(String itemId, int stars, double accuracy) async {
    final prefs = await SharedPreferences.getInstance();
    final completed = prefs.getStringList(_keyCompletedList) ?? [];
    if (!completed.contains(itemId)) {
      completed.add(itemId);
      await prefs.setStringList(_keyCompletedList, completed);
    }
    final existingStars = prefs.getInt('$_keyItemStarsPrefix$itemId') ?? 0;
    if (stars > existingStars) {
      await prefs.setInt('$_keyItemStarsPrefix$itemId', stars);
    }
  }

  Future<List<String>> getCompletedItems() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_keyCompletedList) ?? [];
  }

  Future<int> getItemStars(String itemId) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('$_keyItemStarsPrefix$itemId') ?? 0;
  }

  Future<void> saveSettings({
    required bool soundEnabled,
    required String difficulty,
    required int brushColorIndex,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keySoundEnabled, soundEnabled);
    await prefs.setString(_keyDifficulty, difficulty);
    await prefs.setInt(_keyBrushColor, brushColorIndex);
  }

  Future<Map<String, dynamic>> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'soundEnabled': prefs.getBool(_keySoundEnabled) ?? true,
      'difficulty': prefs.getString(_keyDifficulty) ?? 'Easy',
      'brushColorIndex': prefs.getInt(_keyBrushColor) ?? 0,
    };
  }

  Future<void> resetAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
''',

    "services/audio_service.dart": '''import 'package:flutter/services.dart';

class AudioService {
  bool soundEnabled = true;

  void playDrawFeedback() {
    if (!soundEnabled) return;
    HapticFeedback.lightImpact();
  }

  void playSuccessFeedback() {
    if (!soundEnabled) return;
    HapticFeedback.mediumImpact();
  }

  void playCompleteFeedback() {
    if (!soundEnabled) return;
    HapticFeedback.vibrate();
  }

  void playButtonFeedback() {
    if (!soundEnabled) return;
    HapticFeedback.selectionClick();
  }
}
''',

    "viewmodels/settings_viewmodel.dart": '''import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import '../services/audio_service.dart';
import '../utils/kid_colors.dart';

class SettingsViewModel extends ChangeNotifier {
  final StorageService _storageService;
  final AudioService _audioService;

  bool _soundEnabled = true;
  String _difficulty = 'Easy';
  int _brushColorIndex = 0;

  SettingsViewModel(this._storageService, this._audioService) {
    _loadSettings();
  }

  bool get soundEnabled => _soundEnabled;
  String get difficulty => _difficulty;
  int get brushColorIndex => _brushColorIndex;
  Color get activeBrushColor => KidColors.brushPalette[_brushColorIndex % KidColors.brushPalette.length];

  double get hitTolerance {
    switch (_difficulty) {
      case 'Hard':
        return 22.0;
      case 'Medium':
        return 34.0;
      case 'Easy':
      default:
        return 48.0;
    }
  }

  Future<void> _loadSettings() async {
    final settings = await _storageService.loadSettings();
    _soundEnabled = settings['soundEnabled'] as bool;
    _difficulty = settings['difficulty'] as String;
    _brushColorIndex = settings['brushColorIndex'] as int;
    _audioService.soundEnabled = _soundEnabled;
    notifyListeners();
  }

  void toggleSound() {
    _soundEnabled = !_soundEnabled;
    _audioService.soundEnabled = _soundEnabled;
    _audioService.playButtonFeedback();
    _save();
    notifyListeners();
  }

  void setDifficulty(String level) {
    _difficulty = level;
    _audioService.playButtonFeedback();
    _save();
    notifyListeners();
  }

  void setBrushColor(int index) {
    _brushColorIndex = index;
    _audioService.playButtonFeedback();
    _save();
    notifyListeners();
  }

  Future<void> resetProgress() async {
    await _storageService.resetAll();
    _audioService.playCompleteFeedback();
    notifyListeners();
  }

  void _save() {
    _storageService.saveSettings(
      soundEnabled: _soundEnabled,
      difficulty: _difficulty,
      brushColorIndex: _brushColorIndex,
    );
  }
}
''',

    "viewmodels/progress_viewmodel.dart": '''import 'package:flutter/material.dart';
import '../services/storage_service.dart';

class ProgressViewModel extends ChangeNotifier {
  final StorageService _storageService;
  List<String> _completedIds = [];
  Map<String, int> _itemStars = {};
  bool _isLoading = true;

  ProgressViewModel(this._storageService) {
    loadProgress();
  }

  bool get isLoading => _isLoading;
  List<String> get completedIds => _completedIds;
  int get totalCompleted => _completedIds.length;
  int get totalStars => _itemStars.values.fold(0, (a, b) => a + b);

  int getStarsFor(String itemId) => _itemStars[itemId] ?? 0;
  bool isCompleted(String itemId) => _completedIds.contains(itemId);

  Future<void> loadProgress() async {
    _isLoading = true;
    notifyListeners();
    _completedIds = await _storageService.getCompletedItems();
    final starsMap = <String, int>{};
    for (final id in _completedIds) {
      starsMap[id] = await _storageService.getItemStars(id);
    }
    _itemStars = starsMap;
    _isLoading = false;
    notifyListeners();
  }

  Future<void> recordCompletion(String itemId, int stars, double accuracy) async {
    await _storageService.saveItemCompletion(itemId, stars, accuracy);
    await loadProgress();
  }
}
''',

    "viewmodels/tracing_viewmodel.dart": '''import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../models/tracing_item.dart';
import '../services/audio_service.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../viewmodels/settings_viewmodel.dart';

class TracingViewModel extends ChangeNotifier {
  final AudioService _audioService;
  final ProgressViewModel _progressViewModel;
  final SettingsViewModel _settingsViewModel;

  late List<TracingItem> _items;
  int _currentItemIndex = 0;

  int _currentStrokeIndex = 0;
  List<List<Offset>> _completedStrokes = [];
  List<Offset> _currentStrokePoints = [];
  Set<int> _visitedGuidePoints = {};

  double _accuracy = 100.0;
  double _progressPercentage = 0.0;
  bool _isCompleted = false;
  int _starsEarned = 0;
  bool _isTracing = false;

  TracingViewModel(
    this._audioService,
    this._progressViewModel,
    this._settingsViewModel,
    List<TracingItem> items,
  ) {
    _items = items;
    _resetItem();
  }

  List<TracingItem> get items => _items;
  TracingItem get activeItem => _items[_currentItemIndex];
  int get currentItemIndex => _currentItemIndex;
  int get currentStrokeIndex => _currentStrokeIndex;
  List<List<Offset>> get completedStrokes => _completedStrokes;
  List<Offset> get currentStrokePoints => _currentStrokePoints;
  double get accuracy => _accuracy;
  double get progressPercentage => _progressPercentage;
  bool get isCompleted => _isCompleted;
  int get starsEarned => _starsEarned;
  bool get isTracing => _isTracing;
  bool get hasPrevious => _currentItemIndex > 0;
  bool get hasNext => _currentItemIndex < _items.length - 1;

  void selectItem(int index) {
    if (index >= 0 && index < _items.length) {
      _currentItemIndex = index;
      _resetItem();
      notifyListeners();
    }
  }

  void nextItem() {
    if (hasNext) {
      _currentItemIndex++;
      _resetItem();
      notifyListeners();
    }
  }

  void previousItem() {
    if (hasPrevious) {
      _currentItemIndex--;
      _resetItem();
      notifyListeners();
    }
  }

  void _resetItem() {
    _currentStrokeIndex = 0;
    _completedStrokes = [];
    _currentStrokePoints = [];
    _visitedGuidePoints = {};
    _accuracy = 100.0;
    _progressPercentage = 0.0;
    _isCompleted = false;
    _starsEarned = 0;
    _isTracing = false;
  }

  void onPanStart(Offset position, Size canvasSize) {
    if (_isCompleted) return;
    final stroke = activeItem.strokes[_currentStrokeIndex];
    final guideOffsets = stroke.points.map((p) => p.toOffset(canvasSize)).toList();
    if (guideOffsets.isEmpty) return;

    final startPoint = guideOffsets.first;
    final distance = (position - startPoint).distance;
    final tolerance = _settingsViewModel.hitTolerance * 1.5;

    if (distance <= tolerance) {
      _isTracing = true;
      _currentStrokePoints = [position];
      _visitedGuidePoints.add(0);
      _audioService.playDrawFeedback();
      _calculateProgress(canvasSize);
      notifyListeners();
    }
  }

  void onPanUpdate(Offset position, Size canvasSize) {
    if (!_isTracing || _isCompleted) return;
    _currentStrokePoints.add(position);

    final stroke = activeItem.strokes[_currentStrokeIndex];
    final guideOffsets = stroke.points.map((p) => p.toOffset(canvasSize)).toList();

    double minDistance = double.infinity;
    for (int i = 0; i < guideOffsets.length; i++) {
      final dist = (position - guideOffsets[i]).distance;
      if (dist < minDistance) {
        minDistance = dist;
      }
      if (dist <= _settingsViewModel.hitTolerance) {
        _visitedGuidePoints.add(i);
      }
    }

    if (minDistance > _settingsViewModel.hitTolerance * 2.0) {
      _accuracy = math.max(60.0, _accuracy - 0.4);
    }

    _audioService.playDrawFeedback();
    _calculateProgress(canvasSize);

    final endPoint = guideOffsets.last;
    final distToEnd = (position - endPoint).distance;
    final guideRatio = _visitedGuidePoints.length / guideOffsets.length;

    if (distToEnd <= _settingsViewModel.hitTolerance && guideRatio >= 0.7) {
      _finishStroke(canvasSize);
    }

    notifyListeners();
  }

  void onPanEnd(Size canvasSize) {
    if (!_isTracing || _isCompleted) return;
    _isTracing = false;

    final stroke = activeItem.strokes[_currentStrokeIndex];
    final guideOffsets = stroke.points.map((p) => p.toOffset(canvasSize)).toList();
    final guideRatio = _visitedGuidePoints.length / guideOffsets.length;

    if (guideRatio >= 0.8) {
      _finishStroke(canvasSize);
    }
    notifyListeners();
  }

  void _finishStroke(Size canvasSize) {
    _completedStrokes.add(List.from(_currentStrokePoints));
    _currentStrokePoints = [];
    _visitedGuidePoints = {};
    _audioService.playSuccessFeedback();

    if (_currentStrokeIndex < activeItem.strokes.length - 1) {
      _currentStrokeIndex++;
    } else {
      _isCompleted = true;
      _progressPercentage = 100.0;
      if (_accuracy >= 88.0) {
        _starsEarned = 3;
      } else if (_accuracy >= 72.0) {
        _starsEarned = 2;
      } else {
        _starsEarned = 1;
      }
      _audioService.playCompleteFeedback();
      _progressViewModel.recordCompletion(activeItem.id, _starsEarned, _accuracy);
    }
  }

  void _calculateProgress(Size canvasSize) {
    int totalStrokes = activeItem.strokes.length;
    double strokeWeight = 100.0 / totalStrokes;
    double currentStrokeRatio = 0.0;
    final stroke = activeItem.strokes[_currentStrokeIndex];
    if (stroke.points.isNotEmpty) {
      currentStrokeRatio = _visitedGuidePoints.length / stroke.points.length;
    }
    _progressPercentage = math.min(
      100.0,
      (_currentStrokeIndex * strokeWeight) + (currentStrokeRatio * strokeWeight),
    );
  }

  void undo() {
    _audioService.playButtonFeedback();
    if (_currentStrokePoints.isNotEmpty) {
      _currentStrokePoints.clear();
      _visitedGuidePoints.clear();
    } else if (_completedStrokes.isNotEmpty) {
      _completedStrokes.removeLast();
      if (_currentStrokeIndex > 0) {
        _currentStrokeIndex--;
      }
      _visitedGuidePoints.clear();
    }
    _isCompleted = false;
    _calculateProgress(Size(300, 300));
    notifyListeners();
  }

  void clear() {
    _audioService.playButtonFeedback();
    _resetItem();
    notifyListeners();
  }

  void replay() {
    _audioService.playButtonFeedback();
    _resetItem();
    notifyListeners();
  }
}
''',

    "painters/tracing_painter.dart": '''import 'dart:math' as math;
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
''',

    "painters/celebration_painter.dart": '''import 'dart:math' as math;
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
''',

    "widgets/kid_button.dart": '''import 'package:flutter/material.dart';

class KidButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressed;
  final double fontSize;
  final EdgeInsets? padding;

  KidButton({
    Key? key,
    required this.label,
    this.icon,
    required this.color,
    this.textColor = Colors.white,
    this.onPressed,
    this.fontSize = 18.0,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ?? EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: effectivePadding,
        decoration: BoxDecoration(
          color: onPressed != null ? color : Colors.grey.shade400,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: (onPressed != null ? color : Colors.grey.shade500).withOpacity(0.4),
              offset: Offset(0, 4),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor, size: fontSize + 4),
              SizedBox(width: 8.0),
            ],
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''',

    "widgets/kid_card.dart": '''import 'package:flutter/material.dart';

class KidCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsets? padding;
  final VoidCallback? onTap;

  KidCard({
    Key? key,
    required this.child,
    required this.backgroundColor,
    required this.borderColor,
    this.padding,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ?? EdgeInsets.all(16.0);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: effectivePadding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(color: borderColor, width: 2.0),
          boxShadow: [
            BoxShadow(
              color: borderColor.withOpacity(0.3),
              offset: Offset(0, 4),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
''',

    "widgets/star_rating_widget.dart": '''import 'package:flutter/material.dart';
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
''',

    "widgets/accuracy_meter.dart": '''import 'package:flutter/material.dart';
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
''',

    "views/splash_screen.dart": '''import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_button.dart';

class SplashScreen extends StatefulWidget {
  final String appTitle;

  SplashScreen({Key? key, required this.appTitle}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _scaleAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KidColors.softMint,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: _scaleAnimation,
                  child: Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: KidColors.mintBorder.withOpacity(0.6),
                          blurRadius: 20.0,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.brush_rounded,
                        size: 70.0,
                        color: KidColors.primaryPurple,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 36.0),
                Text(
                  widget.appTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: KidColors.deepNavy,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  'Trace, Learn & Have Fun!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: KidColors.textMuted,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 48.0),
                KidButton(
                  label: "Let's Play! 🚀",
                  color: KidColors.emeraldGreen,
                  fontSize: 22.0,
                  padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => HomeScreen(appTitle: widget.appTitle)),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
''',

    "views/home_screen.dart": '''import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'category_screen.dart';
import 'tracing_screen.dart';
import 'progress_screen.dart';
import 'settings_screen.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';
import '../widgets/kid_button.dart';

class HomeScreen extends StatelessWidget {
  final String appTitle;

  HomeScreen({Key? key, required this.appTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final progressVm = Provider.of<ProgressViewModel>(context);
    final tracingVm = Provider.of<TracingViewModel>(context);

    return Scaffold(
      backgroundColor: KidColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Little Star! 👋',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: KidColors.textMuted,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          appTitle,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: KidColors.deepNavy,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: KidColors.softYellow,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: KidColors.yellowBorder, width: 2.0),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star_rounded, color: KidColors.sunnyAmber, size: 24.0),
                        SizedBox(width: 4.0),
                        Text(
                          '${progressVm.totalStars}',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: KidColors.deepNavy,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              KidCard(
                backgroundColor: KidColors.softBlue,
                borderColor: KidColors.blueBorder,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              tracingVm.activeItem.iconSymbol,
                              style: TextStyle(fontSize: 28.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ready to Trace?',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: KidColors.textMuted,
                                ),
                              ),
                              Text(
                                tracingVm.activeItem.title,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: KidColors.deepNavy,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    KidButton(
                      label: 'Start Tracing Now! 🎨',
                      color: KidColors.primaryPurple,
                      fontSize: 18.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => TracingScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: KidCard(
                      backgroundColor: KidColors.softPink,
                      borderColor: KidColors.pinkBorder,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => CategoryScreen()),
                        );
                      },
                      child: Column(
                        children: [
                          Icon(Icons.category_rounded, size: 40.0, color: KidColors.coralPink),
                          SizedBox(height: 8.0),
                          Text(
                            'Activities',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: KidColors.deepNavy,
                            ),
                          ),
                          Text(
                            '${tracingVm.items.length} items',
                            style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: KidCard(
                      backgroundColor: KidColors.softYellow,
                      borderColor: KidColors.yellowBorder,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ProgressScreen()),
                        );
                      },
                      child: Column(
                        children: [
                          Icon(Icons.emoji_events_rounded, size: 40.0, color: KidColors.sunnyAmber),
                          SizedBox(height: 8.0),
                          Text(
                            'My Stars',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: KidColors.deepNavy,
                            ),
                          ),
                          Text(
                            '${progressVm.totalCompleted} done',
                            style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              KidCard(
                backgroundColor: KidColors.softLavender,
                borderColor: KidColors.lavenderBorder,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SettingsScreen()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.settings_rounded, size: 32.0, color: KidColors.primaryPurple),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'App Settings',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: KidColors.deepNavy,
                            ),
                          ),
                          Text(
                            'Sound, Brush Color & Difficulty',
                            style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right_rounded, color: KidColors.textMuted),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
''',

    "views/category_screen.dart": '''import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../viewmodels/progress_viewmodel.dart';
import 'tracing_screen.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';
import '../widgets/star_rating_widget.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  String selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    final tracingVm = Provider.of<TracingViewModel>(context);
    final progressVm = Provider.of<ProgressViewModel>(context);

    final categories = ['All', ...{for (var i in tracingVm.items) i.category}];
    final filteredItems = selectedFilter == 'All'
        ? tracingVm.items
        : tracingVm.items.where((i) => i.category == selectedFilter).toList();

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Select Tracing Item',
          style: TextStyle(
            color: KidColors.deepNavy,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: KidColors.deepNavy),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: categories.map((diff) {
                  final isSel = selectedFilter == diff;
                  return Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      label: Text(diff),
                      selected: isSel,
                      selectedColor: KidColors.primaryPurple,
                      labelStyle: TextStyle(
                        color: isSel ? Colors.white : KidColors.deepNavy,
                        fontWeight: FontWeight.bold,
                      ),
                      onSelected: (_) {
                        setState(() {
                          selectedFilter = diff;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  final item = filteredItems[index];
                  final isDone = progressVm.isCompleted(item.id);
                  final stars = progressVm.getStarsFor(item.id);

                  return Padding(
                    padding: EdgeInsets.only(bottom: 14.0),
                    child: KidCard(
                      backgroundColor: isDone ? KidColors.softMint : Colors.white,
                      borderColor: isDone ? KidColors.mintBorder : KidColors.blueBorder,
                      onTap: () {
                        final realIndex = tracingVm.items.indexWhere((it) => it.id == item.id);
                        tracingVm.selectItem(realIndex);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => TracingScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: KidColors.softYellow,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                item.iconSymbol,
                                style: TextStyle(fontSize: 24.0),
                              ),
                            ),
                          ),
                          SizedBox(width: 14.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.title,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: KidColors.deepNavy,
                                  ),
                                ),
                                SizedBox(height: 2.0),
                                Text(
                                  '${item.category} • ${item.difficulty}',
                                  style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                                ),
                                if (isDone) ...[
                                  SizedBox(height: 4.0),
                                  StarRatingWidget(stars: stars, starSize: 18.0),
                                ],
                              ],
                            ),
                          ),
                          Icon(
                            isDone ? Icons.check_circle_rounded : Icons.play_arrow_rounded,
                            color: isDone ? KidColors.emeraldGreen : KidColors.primaryPurple,
                            size: 32.0,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''',

    "views/completion_screen.dart": '''import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_button.dart';
import '../widgets/star_rating_widget.dart';
import '../painters/celebration_painter.dart';

class CompletionScreen extends StatefulWidget {
  CompletionScreen({Key? key}) : super(key: key);

  @override
  State<CompletionScreen> createState() => _CompletionScreenState();
}

class _CompletionScreenState extends State<CompletionScreen> with SingleTickerProviderStateMixin {
  late AnimationController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    )..repeat();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tracingVm = Provider.of<TracingViewModel>(context);

    return Scaffold(
      backgroundColor: KidColors.softYellow,
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _confettiController,
            builder: (context, child) {
              return CustomPaint(
                size: Size.infinite,
                painter: CelebrationPainter(animationProgress: _confettiController.value),
              );
            },
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '🎉 FANTASTIC! 🎉',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: KidColors.deepNavy,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'You successfully traced:',
                      style: TextStyle(fontSize: 16.0, color: KidColors.textMuted),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      tracingVm.activeItem.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: KidColors.primaryPurple,
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24.0),
                        boxShadow: [
                          BoxShadow(
                            color: KidColors.yellowBorder,
                            blurRadius: 16.0,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          StarRatingWidget(stars: tracingVm.starsEarned, starSize: 48.0),
                          SizedBox(height: 14.0),
                          Text(
                            'Accuracy: ${tracingVm.accuracy.toInt()}%',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: KidColors.deepNavy,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            tracingVm.activeItem.funFact,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontStyle: FontStyle.italic,
                              color: KidColors.textMuted,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.0),
                    if (tracingVm.hasNext) ...[
                      KidButton(
                        label: 'Next Activity ➡️',
                        color: KidColors.emeraldGreen,
                        fontSize: 18.0,
                        onPressed: () {
                          tracingVm.nextItem();
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(height: 14.0),
                    ],
                    KidButton(
                      label: 'Trace Again 🔄',
                      color: KidColors.skyCyan,
                      fontSize: 16.0,
                      onPressed: () {
                        tracingVm.replay();
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(height: 14.0),
                    KidButton(
                      label: 'Go Home 🏠',
                      color: KidColors.primaryPurple,
                      fontSize: 16.0,
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
''',

    "views/tracing_screen.dart": '''import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../viewmodels/settings_viewmodel.dart';
import '../painters/tracing_painter.dart';
import '../utils/kid_colors.dart';
import '../widgets/accuracy_meter.dart';
import 'completion_screen.dart';

class TracingScreen extends StatefulWidget {
  TracingScreen({Key? key}) : super(key: key);

  @override
  State<TracingScreen> createState() => _TracingScreenState();
}

class _TracingScreenState extends State<TracingScreen> {
  bool _shownCompletion = false;

  @override
  Widget build(BuildContext context) {
    final tracingVm = Provider.of<TracingViewModel>(context);
    final settingsVm = Provider.of<SettingsViewModel>(context);

    if (tracingVm.isCompleted && !_shownCompletion) {
      _shownCompletion = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => CompletionScreen()),
        ).then((_) {
          _shownCompletion = false;
        });
      });
    }

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          tracingVm.activeItem.title,
          style: TextStyle(
            color: KidColors.deepNavy,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: KidColors.deepNavy),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(
              settingsVm.soundEnabled ? Icons.volume_up_rounded : Icons.volume_off_rounded,
              color: KidColors.deepNavy,
            ),
            onPressed: () => settingsVm.toggleSound(),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: AccuracyMeter(
                progress: tracingVm.progressPercentage,
                accuracy: tracingVm.accuracy,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
              child: Text(
                tracingVm.activeItem.strokes[tracingVm.currentStrokeIndex].instruction,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: KidColors.deepNavy,
                ),
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final canvasSize = Size(constraints.maxWidth, constraints.maxHeight);

                  return Padding(
                    padding: EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onPanStart: (details) => tracingVm.onPanStart(details.localPosition, canvasSize),
                      onPanUpdate: (details) => tracingVm.onPanUpdate(details.localPosition, canvasSize),
                      onPanEnd: (_) => tracingVm.onPanEnd(canvasSize),
                      child: CustomPaint(
                        size: canvasSize,
                        painter: TracingPainter(
                          item: tracingVm.activeItem,
                          activeStrokeIndex: tracingVm.currentStrokeIndex,
                          completedStrokes: tracingVm.completedStrokes,
                          currentStrokePoints: tracingVm.currentStrokePoints,
                          brushColor: settingsVm.activeBrushColor,
                          isCompleted: tracingVm.isCompleted,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset(0, -3),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_rounded, color: tracingVm.hasPrevious ? KidColors.deepNavy : Colors.grey.shade300),
                    onPressed: tracingVm.hasPrevious ? () => tracingVm.previousItem() : null,
                    tooltip: 'Previous',
                  ),
                  IconButton(
                    icon: Icon(Icons.undo_rounded, color: KidColors.sunnyAmber),
                    onPressed: () => tracingVm.undo(),
                    tooltip: 'Undo',
                  ),
                  IconButton(
                    icon: Icon(Icons.replay_rounded, color: KidColors.skyCyan),
                    onPressed: () => tracingVm.replay(),
                    tooltip: 'Restart',
                  ),
                  IconButton(
                    icon: Icon(Icons.delete_outline_rounded, color: KidColors.coralPink),
                    onPressed: () => tracingVm.clear(),
                    tooltip: 'Clear',
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_rounded, color: tracingVm.hasNext ? KidColors.deepNavy : Colors.grey.shade300),
                    onPressed: tracingVm.hasNext ? () => tracingVm.nextItem() : null,
                    tooltip: 'Next',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
''',

    "views/progress_screen.dart": '''import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';

class ProgressScreen extends StatelessWidget {
  ProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final progressVm = Provider.of<ProgressViewModel>(context);
    final tracingVm = Provider.of<TracingViewModel>(context);
    final totalItems = tracingVm.items.length;
    final percent = totalItems > 0 ? (progressVm.totalCompleted / totalItems) * 100 : 0.0;

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Progress & Badges',
          style: TextStyle(
            color: KidColors.deepNavy,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: KidColors.deepNavy),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KidCard(
                backgroundColor: KidColors.softYellow,
                borderColor: KidColors.yellowBorder,
                child: Column(
                  children: [
                    Text('Total Stars Earned', style: TextStyle(color: KidColors.textMuted, fontSize: 14.0)),
                    SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rounded, color: KidColors.sunnyAmber, size: 40.0),
                        SizedBox(width: 8.0),
                        Text(
                          '${progressVm.totalStars}',
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            color: KidColors.deepNavy,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Activities Mastered: ${progressVm.totalCompleted} of $totalItems (${percent.toInt()}%)',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: KidColors.deepNavy),
                    ),
                    SizedBox(height: 8.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: LinearProgressIndicator(
                        value: (percent / 100.0).clamp(0.0, 1.0),
                        minHeight: 12.0,
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(KidColors.emeraldGreen),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Achievement Badges',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: KidColors.deepNavy,
                ),
              ),
              SizedBox(height: 12.0),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
                childAspectRatio: 1.2,
                children: [
                  _buildBadge(
                    title: 'First Step',
                    subtitle: 'Completed 1 item',
                    isUnlocked: progressVm.totalCompleted >= 1,
                    icon: '🌱',
                  ),
                  _buildBadge(
                    title: 'Star Cadet',
                    subtitle: 'Earned 5+ stars',
                    isUnlocked: progressVm.totalStars >= 5,
                    icon: '⭐',
                  ),
                  _buildBadge(
                    title: 'Super Tracer',
                    subtitle: 'Completed 10 items',
                    isUnlocked: progressVm.totalCompleted >= 10,
                    icon: '🚀',
                  ),
                  _buildBadge(
                    title: 'Master Artist',
                    subtitle: 'All items done!',
                    isUnlocked: progressVm.totalCompleted >= totalItems && totalItems > 0,
                    icon: '👑',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBadge({
    required String title,
    required String subtitle,
    required bool isUnlocked,
    required String icon,
  }) {
    return KidCard(
      backgroundColor: isUnlocked ? Colors.white : Colors.grey.shade100,
      borderColor: isUnlocked ? KidColors.yellowBorder : Colors.grey.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            icon,
            style: TextStyle(
              fontSize: 32.0,
              color: isUnlocked ? null : Colors.grey,
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: isUnlocked ? KidColors.deepNavy : Colors.grey.shade600,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              color: isUnlocked ? KidColors.textMuted : Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
''',

    "views/settings_screen.dart": '''import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/settings_viewmodel.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsVm = Provider.of<SettingsViewModel>(context);
    final progressVm = Provider.of<ProgressViewModel>(context);

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            color: KidColors.deepNavy,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: KidColors.deepNavy),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KidCard(
                backgroundColor: Colors.white,
                borderColor: KidColors.blueBorder,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sound & Haptics', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: KidColors.deepNavy)),
                    SwitchListTile(
                      title: Text('Sound Effects'),
                      subtitle: Text('Kid-friendly audio & tap feedback'),
                      value: settingsVm.soundEnabled,
                      activeColor: KidColors.emeraldGreen,
                      onChanged: (_) => settingsVm.toggleSound(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              KidCard(
                backgroundColor: Colors.white,
                borderColor: KidColors.pinkBorder,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Difficulty Level', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: KidColors.deepNavy)),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: ['Easy', 'Medium', 'Hard'].map((lvl) {
                        final isSel = settingsVm.difficulty == lvl;
                        return ChoiceChip(
                          label: Text(lvl),
                          selected: isSel,
                          selectedColor: KidColors.primaryPurple,
                          labelStyle: TextStyle(
                            color: isSel ? Colors.white : KidColors.deepNavy,
                            fontWeight: FontWeight.bold,
                          ),
                          onSelected: (_) => settingsVm.setDifficulty(lvl),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              KidCard(
                backgroundColor: Colors.white,
                borderColor: KidColors.yellowBorder,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tracing Brush Color', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: KidColors.deepNavy)),
                    SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(KidColors.brushPalette.length, (idx) {
                        final col = KidColors.brushPalette[idx];
                        final isSel = settingsVm.brushColorIndex == idx;
                        return GestureDetector(
                          onTap: () => settingsVm.setBrushColor(idx),
                          child: Container(
                            width: 38.0,
                            height: 38.0,
                            decoration: BoxDecoration(
                              color: col,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isSel ? KidColors.deepNavy : Colors.transparent,
                                width: 3.0,
                              ),
                            ),
                            child: isSel ? Icon(Icons.check, color: Colors.white, size: 20.0) : null,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              KidCard(
                backgroundColor: KidColors.softPink,
                borderColor: KidColors.pinkBorder,
                child: ListTile(
                  leading: Icon(Icons.restore_rounded, color: KidColors.coralPink, size: 30.0),
                  title: Text('Reset All Progress', style: TextStyle(fontWeight: FontWeight.bold, color: KidColors.coralPink)),
                  subtitle: Text('Clear completed stars and restart fresh'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text('Reset Progress?'),
                        content: Text('Are you sure you want to reset all stars and completed items?'),
                        actions: [
                          TextButton(onPressed: () => Navigator.pop(ctx), child: Text('Cancel')),
                          TextButton(
                            onPressed: () async {
                              await settingsVm.resetProgress();
                              await progressVm.loadProgress();
                              Navigator.pop(ctx);
                            },
                            child: Text('Reset', style: TextStyle(color: Colors.red)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
''',
}

def generate_app_project(folder_name, pkg_name, app_title, primary_color_hex, items_dart_code):
    os.makedirs(folder_name, exist_ok=True)
    
    # 1. Copy platform scaffolds if not present
    scaffold_src = "F:\\tracing_one\\01_Line_Tracing_App"
    for dir_name in ["android", "ios", "windows", "web", "linux", "macos"]:
        dest_dir = os.path.join(folder_name, dir_name)
        if not os.path.exists(dest_dir) and os.path.exists(os.path.join(scaffold_src, dir_name)):
            shutil.copytree(os.path.join(scaffold_src, dir_name), dest_dir)
            
    # Copy metadata and gitignore
    for f_name in [".metadata", ".gitignore"]:
        src_f = os.path.join(scaffold_src, f_name)
        dst_f = os.path.join(folder_name, f_name)
        if os.path.exists(src_f) and not os.path.exists(dst_f):
            shutil.copy(src_f, dst_f)

    # 2. Write pubspec.yaml
    pubspec_content = f'''name: {pkg_name}
description: "{app_title} - Kids Educational Tracing Application."
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: ^3.13.0

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  provider: ^6.1.5+1
  shared_preferences: ^2.5.6

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0
'''
    with open(os.path.join(folder_name, "pubspec.yaml"), "w", encoding="utf-8") as f:
        f.write(pubspec_content)

    # 3. Write analysis_options.yaml
    analysis_options = '''include: package:flutter_lints/flutter.yaml

analyzer:
  exclude:
    - build/**
    - android/**
    - ios/**
    - web/**
    - windows/**
    - macos/**
    - linux/**
  errors:
    deprecated_member_use: ignore
    use_build_context_synchronously: ignore

linter:
  rules:
    prefer_const_constructors: false
    prefer_const_literals_to_create_immutables: false
    prefer_const_declarations: false
    prefer_const_constructors_in_immutables: false
    use_super_parameters: false
    avoid_print: false
'''
    with open(os.path.join(folder_name, "analysis_options.yaml"), "w", encoding="utf-8") as f:
        f.write(analysis_options)

    # 4. Write all standard template files in lib/
    for rel_path, content in TEMPLATES.items():
        full_path = os.path.join(folder_name, "lib", rel_path)
        os.makedirs(os.path.dirname(full_path), exist_ok=True)
        with open(full_path, "w", encoding="utf-8") as f:
            f.write(content)

    # 5. Write path_templates.dart
    templates_path = os.path.join(folder_name, "lib", "utils", "path_templates.dart")
    os.makedirs(os.path.dirname(templates_path), exist_ok=True)
    with open(templates_path, "w", encoding="utf-8") as f:
        f.write(items_dart_code)

    # 6. Write main.dart
    main_dart = f'''import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'services/storage_service.dart';
import 'services/audio_service.dart';
import 'viewmodels/settings_viewmodel.dart';
import 'viewmodels/progress_viewmodel.dart';
import 'viewmodels/tracing_viewmodel.dart';
import 'utils/path_templates.dart';
import 'views/splash_screen.dart';

void main() async {{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final storageService = StorageService();
  final audioService = AudioService();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SettingsViewModel(storageService, audioService),
        ),
        ChangeNotifierProvider(
          create: (_) => ProgressViewModel(storageService),
        ),
        ChangeNotifierProxyProvider2<ProgressViewModel, SettingsViewModel, TracingViewModel>(
          create: (context) => TracingViewModel(
            audioService,
            Provider.of<ProgressViewModel>(context, listen: false),
            Provider.of<SettingsViewModel>(context, listen: false),
            PathTemplates.getItems(),
          ),
          update: (_, progressVm, settingsVm, previous) =>
              previous ??
              TracingViewModel(
                audioService,
                progressVm,
                settingsVm,
                PathTemplates.getItems(),
              ),
        ),
      ],
      child: MyApp(),
    ),
  );
}}

class MyApp extends StatelessWidget {{
  MyApp({{Key? key}}) : super(key: key);

  @override
  Widget build(BuildContext context) {{
    return MaterialApp(
      title: '{app_title}',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Color(0xFFF9FBFC),
      ),
      home: SplashScreen(appTitle: '{app_title}'),
    );
  }}
}}
'''
    with open(os.path.join(folder_name, "lib", "main.dart"), "w", encoding="utf-8") as f:
        f.write(main_dart)

    # 7. Write test/widget_test.dart
    test_dart = f'''import 'package:flutter_test/flutter_test.dart';
import 'package:{pkg_name}/main.dart';

void main() {{
  testWidgets('{app_title} smoke test', (WidgetTester tester) async {{
    await tester.pumpWidget(MyApp());
    expect(find.text('{app_title}'), findsOneWidget);
  }});
}}
'''
    os.makedirs(os.path.join(folder_name, "test"), exist_ok=True)
    with open(os.path.join(folder_name, "test", "widget_test.dart"), "w", encoding="utf-8") as f:
        f.write(test_dart)

    # 8. Copy .dart_tool/package_config.json if possible to avoid redundant downloading
    dart_tool_src = os.path.join(scaffold_src, ".dart_tool")
    dart_tool_dst = os.path.join(folder_name, ".dart_tool")
    if os.path.exists(dart_tool_src) and not os.path.exists(dart_tool_dst):
        try:
            shutil.copytree(dart_tool_src, dart_tool_dst)
            # Replace line_tracing_app in package_config
            pkg_json = os.path.join(dart_tool_dst, "package_config.json")
            if os.path.exists(pkg_json):
                with open(pkg_json, "r", encoding="utf-8") as pf:
                    c = pf.read().replace("line_tracing_app", pkg_name).replace("01_Line_Tracing_App", folder_name)
                with open(pkg_json, "w", encoding="utf-8") as pf:
                    pf.write(c)
        except Exception:
            pass

    print(f"Generated complete MVVM project: {folder_name} ({pkg_name})")

