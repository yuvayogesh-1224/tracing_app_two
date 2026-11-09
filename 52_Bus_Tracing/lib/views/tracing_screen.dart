import 'package:flutter/material.dart';
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
