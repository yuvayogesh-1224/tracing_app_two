import 'package:shared_preferences/shared_preferences.dart';

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
