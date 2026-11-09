import 'dart:math' as math;
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
