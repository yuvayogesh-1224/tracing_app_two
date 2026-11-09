# special_app_customizer.py
# Injects custom specialized UI/Painters for Apps 88, 91, 94, 98, 100

import os

def customize_special_apps():
    print("Applying specialized customizations to Apps 88, 91, 94, 98, 100...")

    # 1. App 88: Name Writing Tracing (Custom Name Input)
    customize_88_name_writing()

    # 2. App 91: Mirror Drawing (Center Mirror Axis Painter)
    customize_91_mirror_drawing()

    # 3. App 94: Glow Path Tracing (Neon Glow Effect Painter)
    customize_94_glow_path()

    # 4. App 98: Connect The Dots Tracing (Numbered Dot Badges Painter)
    customize_98_connect_dots()

    # 5. App 100: Freehand Drawing Practice (Brush Sizes, Eraser, Full Palette)
    customize_100_freehand()

def customize_88_name_writing():
    folder = "88_Name_Writing_Tracing"
    screen_path = os.path.join(folder, "lib", "views", "category_screen.dart")
    if not os.path.exists(screen_path):
        return

    # Add custom name creation button to CategoryScreen
    custom_category_screen = '''import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/tracing_viewmodel.dart';
import '../viewmodels/progress_viewmodel.dart';
import '../models/tracing_item.dart';
import 'tracing_screen.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_card.dart';
import '../widgets/kid_button.dart';
import '../widgets/star_rating_widget.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController _nameController = TextEditingController();

  void _showAddCustomNameDialog(BuildContext context, TracingViewModel tracingVm) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        title: Text(
          'Enter Your Own Name! ✏️',
          style: TextStyle(fontWeight: FontWeight.bold, color: KidColors.deepNavy),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Type a child\'s name to generate custom tracing guides locally:"),
            SizedBox(height: 12.0),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'e.g., Liam, Sophia, Alex',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                fillColor: KidColors.softBlue,
                filled: true,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text('Cancel'),
          ),
          KidButton(
            label: 'Create & Trace!',
            color: KidColors.emeraldGreen,
            onPressed: () {
              final name = _nameController.text.trim();
              if (name.isNotEmpty) {
                final newItem = TracingItem(
                  id: 'custom_${DateTime.now().millisecondsSinceEpoch}',
                  title: 'My Name: $name',
                  category: 'Custom Names',
                  difficulty: 'Easy',
                  funFact: 'You wrote your own unique name! Fantastic work!',
                  iconSymbol: '⭐',
                  strokes: [
                    TracingStroke(
                      id: 1,
                      instruction: 'Trace the first letter of $name',
                      points: [
                        TracingPoint(0.2, 0.65),
                        TracingPoint(0.35, 0.35),
                        TracingPoint(0.5, 0.65),
                      ],
                    ),
                    TracingStroke(
                      id: 2,
                      instruction: 'Trace the middle crossbar',
                      points: [
                        TracingPoint(0.25, 0.52),
                        TracingPoint(0.45, 0.52),
                      ],
                    ),
                    TracingStroke(
                      id: 3,
                      instruction: 'Trace the rest of your letters',
                      points: [
                        TracingPoint(0.55, 0.52),
                        TracingPoint(0.65, 0.45),
                        TracingPoint(0.75, 0.65),
                        TracingPoint(0.85, 0.65),
                      ],
                    ),
                  ],
                );
                tracingVm.items.insert(0, newItem);
                tracingVm.selectItem(0);
                Navigator.pop(ctx);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TracingScreen()),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tracingVm = Provider.of<TracingViewModel>(context);
    final progressVm = Provider.of<ProgressViewModel>(context);

    return Scaffold(
      backgroundColor: KidColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Name Writing Activities',
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: KidCard(
                backgroundColor: KidColors.softYellow,
                borderColor: KidColors.yellowBorder,
                child: Row(
                  children: [
                    Icon(Icons.edit_note_rounded, size: 36.0, color: KidColors.primaryPurple),
                    SizedBox(width: 12.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Write Your Own Name!',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: KidColors.deepNavy),
                          ),
                          Text(
                            'Enter any custom name to trace',
                            style: TextStyle(fontSize: 12.0, color: KidColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                    KidButton(
                      label: '+ Add Name',
                      color: KidColors.emeraldGreen,
                      fontSize: 14.0,
                      onPressed: () => _showAddCustomNameDialog(context, tracingVm),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: tracingVm.items.length,
                itemBuilder: (context, index) {
                  final item = tracingVm.items[index];
                  final isDone = progressVm.isCompleted(item.id);
                  final stars = progressVm.getStarsFor(item.id);

                  return Padding(
                    padding: EdgeInsets.only(bottom: 14.0),
                    child: KidCard(
                      backgroundColor: isDone ? KidColors.softMint : Colors.white,
                      borderColor: isDone ? KidColors.mintBorder : KidColors.blueBorder,
                      onTap: () {
                        tracingVm.selectItem(index);
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
'''
    with open(screen_path, "w", encoding="utf-8") as f:
        f.write(custom_category_screen)

def customize_91_mirror_drawing():
    folder = "91_Mirror_Drawing_Tracing"
    painter_path = os.path.join(folder, "lib", "painters", "tracing_painter.dart")
    if not os.path.exists(painter_path):
        return

    with open(painter_path, "r", encoding="utf-8") as f:
        code = f.read()

    # Add center mirror line in _drawGuideGrid
    mirror_draw = '''
    // Draw Center Symmetrical Mirror Axis Line
    final mirrorPaint = Paint()
      ..color = KidColors.primaryPurple.withOpacity(0.6)
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;
    canvas.drawLine(
      Offset(size.width / 2, 8.0),
      Offset(size.width / 2, size.height - 8.0),
      mirrorPaint,
    );
    final mirrorText = TextPainter(
      text: TextSpan(
        text: '🪞 MIRROR AXIS 🪞',
        style: TextStyle(
          color: KidColors.primaryPurple,
          fontSize: 11.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    mirrorText.paint(canvas, Offset((size.width / 2) - (mirrorText.width / 2), 12.0));
'''
    code = code.replace("canvas.drawRRect(rrect, borderPaint);", "canvas.drawRRect(rrect, borderPaint);\n" + mirror_draw)
    with open(painter_path, "w", encoding="utf-8") as f:
        f.write(code)

def customize_94_glow_path():
    folder = "94_Glow_Path_Tracing"
    painter_path = os.path.join(folder, "lib", "painters", "tracing_painter.dart")
    if not os.path.exists(painter_path):
        return

    with open(painter_path, "r", encoding="utf-8") as f:
        code = f.read()

    # Modify painting of completed & active strokes to have glowing neon blur
    glow_paint = '''
    final glowPaint = Paint()
      ..color = brushColor.withOpacity(0.4)
      ..strokeWidth = 28.0
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 12.0)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
'''
    code = code.replace("final finishedPaint = Paint()", glow_paint + "\n    final finishedPaint = Paint()")
    code = code.replace("canvas.drawPath(path, finishedPaint);", "canvas.drawPath(path, glowPaint);\n        canvas.drawPath(path, finishedPaint);")
    with open(painter_path, "w", encoding="utf-8") as f:
        f.write(code)

def customize_98_connect_dots():
    folder = "98_Connect_The_Dots_Tracing"
    painter_path = os.path.join(folder, "lib", "painters", "tracing_painter.dart")
    if not os.path.exists(painter_path):
        return

    with open(painter_path, "r", encoding="utf-8") as f:
        code = f.read()

    # Add numbered dot badges to the points in _drawGuidePath
    dots_code = '''
    // Numbered dot markers for Connect The Dots
    for (int i = 0; i < points.length; i++) {
      final pt = points[i];
      final circlePaint = Paint()
        ..color = KidColors.sunnyAmber
        ..style = PaintingStyle.fill;
      canvas.drawCircle(pt, 12.0, circlePaint);

      final numPainter = TextPainter(
        text: TextSpan(
          text: '${i + 1}',
          style: TextStyle(
            color: KidColors.deepNavy,
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      numPainter.paint(canvas, Offset(pt.dx - numPainter.width / 2, pt.dy - numPainter.height / 2));
    }
'''
    code = code.replace("void _drawGuidePath(Canvas canvas, List<Offset> points, bool isCurrent, bool isDone) {",
                        "void _drawGuidePath(Canvas canvas, List<Offset> points, bool isCurrent, bool isDone) {\n" + dots_code)
    with open(painter_path, "w", encoding="utf-8") as f:
        f.write(code)

def customize_100_freehand():
    folder = "100_Freehand_Drawing_Practice"
    screen_path = os.path.join(folder, "lib", "views", "tracing_screen.dart")
    if not os.path.exists(screen_path):
        return

    custom_freehand_screen = '''import 'package:flutter/material.dart';
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
'''
    with open(screen_path, "w", encoding="utf-8") as f:
        f.write(custom_freehand_screen)

