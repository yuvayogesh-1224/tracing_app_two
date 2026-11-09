class UserProgress {
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
