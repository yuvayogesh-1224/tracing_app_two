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
  double _brushSize = 16.0;
  bool _isEraser = false;

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

    final activeColor = _isEraser ? KidColors.background : settingsVm.activeBrushColor;

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
              _isEraser ? Icons.brush_rounded : Icons.cleaning_services_rounded,
              color: _isEraser ? KidColors.coralPink : KidColors.deepNavy,
            ),
            tooltip: _isEraser ? 'Switch to Brush' : 'Switch to Eraser',
            onPressed: () {
              setState(() {
                _isEraser = !_isEraser;
              });
            },
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
            // Freehand Tools: Palette & Brush Sizes
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Brush: ', style: TextStyle(fontWeight: FontWeight.bold, color: KidColors.deepNavy, fontSize: 13.0)),
                      GestureDetector(
                        onTap: () => setState(() => _brushSize = 10.0),
                        child: Container(
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: _brushSize == 10.0 ? KidColors.softBlue : Colors.transparent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Icon(Icons.circle, size: 12.0, color: KidColors.deepNavy),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() => _brushSize = 18.0),
                        child: Container(
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: _brushSize == 18.0 ? KidColors.softBlue : Colors.transparent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Icon(Icons.circle, size: 18.0, color: KidColors.deepNavy),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() => _brushSize = 26.0),
                        child: Container(
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: _brushSize == 26.0 ? KidColors.softBlue : Colors.transparent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Icon(Icons.circle, size: 24.0, color: KidColors.deepNavy),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: List.generate(KidColors.brushPalette.length, (idx) {
                      final col = KidColors.brushPalette[idx];
                      final isSel = settingsVm.brushColorIndex == idx && !_isEraser;
                      return GestureDetector(
                        onTap: () {
                          setState(() => _isEraser = false);
                          settingsVm.setBrushColor(idx);
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.0),
                          width: 26.0,
                          height: 26.0,
                          decoration: BoxDecoration(
                            color: col,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSel ? KidColors.deepNavy : Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
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
                          brushColor: activeColor,
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
                    tooltip: 'Clear Canvas',
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
