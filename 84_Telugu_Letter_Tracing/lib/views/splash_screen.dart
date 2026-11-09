import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../utils/kid_colors.dart';
import '../widgets/kid_button.dart';

class SplashScreen extends StatefulWidget {
  final String appTitle;

  SplashScreen({Key? key, required this.appTitle}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _scaleAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KidColors.softMint,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: _scaleAnimation,
                  child: Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: KidColors.mintBorder.withOpacity(0.6),
                          blurRadius: 20.0,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.brush_rounded,
                        size: 70.0,
                        color: KidColors.primaryPurple,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 36.0),
                Text(
                  widget.appTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: KidColors.deepNavy,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  'Trace, Learn & Have Fun!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: KidColors.textMuted,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 48.0),
                KidButton(
                  label: "Let's Play! 🚀",
                  color: KidColors.emeraldGreen,
                  fontSize: 22.0,
                  padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => HomeScreen(appTitle: widget.appTitle)),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
