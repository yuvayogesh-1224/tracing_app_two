import 'package:flutter/services.dart';

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
