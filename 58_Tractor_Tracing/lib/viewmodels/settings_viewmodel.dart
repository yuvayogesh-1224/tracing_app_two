import 'package:flutter/material.dart';
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
