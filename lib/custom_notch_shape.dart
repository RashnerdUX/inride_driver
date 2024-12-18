import 'package:flutter/material.dart';

class CustomNotch {
  static final NotchPainter notchForNav = NotchPainter();
}

class NotchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(91.61, 69.35);
    path_0.lineTo(91.61, 75.64999999999999);
    path_0.cubicTo(91.61, 99.21, 72.50999999999999, 118.29999999999998, 48.95,
        118.29999999999998);
    path_0.lineTo(25.72, 118.29999999999998);
    path_0.cubicTo(11.52, 118.29999999999998, 0, 129.82, 0, 144.01999999999998);
    path_0.lineTo(0, 0.98);
    path_0.cubicTo(0, 15.18, 11.52, 26.7, 25.72, 26.7);
    path_0.lineTo(48.95, 26.7);
    path_0.cubicTo(72.51, 26.7, 91.61, 45.8, 91.61, 69.35);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
