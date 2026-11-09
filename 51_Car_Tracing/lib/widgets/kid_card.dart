import 'package:flutter/material.dart';

class KidCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsets? padding;
  final VoidCallback? onTap;

  KidCard({
    Key? key,
    required this.child,
    required this.backgroundColor,
    required this.borderColor,
    this.padding,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ?? EdgeInsets.all(16.0);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: effectivePadding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(color: borderColor, width: 2.0),
          boxShadow: [
            BoxShadow(
              color: borderColor.withOpacity(0.3),
              offset: Offset(0, 4),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
