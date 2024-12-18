import 'package:flutter/material.dart';

class CustomShape {
  static final RPSCustomPainter forDrawer = RPSCustomPainter();
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 2

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0003500, size.height * 0.0616000);
    path_0.lineTo(size.width * -0.0007500, size.height * 0.9382500);
    path_0.quadraticBezierTo(size.width * -0.0128375, size.height * 0.9599125,
        size.width * 0.0585000, size.height * 0.8712500);
    path_0.cubicTo(
        size.width * 0.3064875,
        size.height * 0.4843625,
        size.width * 0.1995625,
        size.height * 0.3128125,
        size.width * 0.0652500,
        size.height * 0.1240000);
    path_0.quadraticBezierTo(size.width * -0.0111500, size.height * 0.0304000,
        size.width * -0.0003500, size.height * 0.0616000);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 2

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 1

    Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * -0.0004625, size.height * 0.1600000);
    path_1.cubicTo(
        size.width * -0.0010250,
        size.height * 0.6289375,
        size.width * -0.0015625,
        size.height * 0.6199750,
        size.width * -0.0017125,
        size.height * 0.7842500);
    path_1.cubicTo(
        size.width * 0.3637750,
        size.height * 0.7754875,
        size.width * 0.4489250,
        size.height * 0.8253250,
        size.width * 0.6243625,
        size.height * 0.6603750);
    path_1.cubicTo(
        size.width * 0.6338250,
        size.height * 0.6478000,
        size.width * 0.7940500,
        size.height * 0.4705375,
        size.width * 0.6248125,
        size.height * 0.2847500);
    path_1.cubicTo(
        size.width * 0.4416750,
        size.height * 0.1164500,
        size.width * 0.3941500,
        size.height * 0.1677875,
        size.width * -0.0004625,
        size.height * 0.1600000);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // Layer 1

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
