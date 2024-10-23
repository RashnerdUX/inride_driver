import 'package:flutter/material.dart';

//This is a custom drawn triangle used to complete the chat box widget
class Triangle extends CustomPainter {
  Triangle({required this.background});
  final Color background;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint = Paint()
      ..color = background
      ..style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, -2);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
