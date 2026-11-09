import 'package:flutter/material.dart';
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
