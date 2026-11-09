import 'package:flutter/material.dart';
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
