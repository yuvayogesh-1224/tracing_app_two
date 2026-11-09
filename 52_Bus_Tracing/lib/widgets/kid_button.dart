import 'package:flutter/material.dart';

class KidButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressed;
  final double fontSize;
  final EdgeInsets? padding;

  KidButton({
    Key? key,
    required this.label,
    this.icon,
    required this.color,
    this.textColor = Colors.white,
    this.onPressed,
    this.fontSize = 18.0,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ?? EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: effectivePadding,
        decoration: BoxDecoration(
          color: onPressed != null ? color : Colors.grey.shade400,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: (onPressed != null ? color : Colors.grey.shade500).withOpacity(0.4),
              offset: Offset(0, 4),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor, size: fontSize + 4),
              SizedBox(width: 8.0),
            ],
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
