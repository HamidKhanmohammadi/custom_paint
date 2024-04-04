import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    var paintVar = Paint()
      ..color = Colors.black
      ..strokeWidth = 200.0;

    var paint2 = Paint()
      ..color = Colors.teal
      ..strokeWidth = 10
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    var path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 3, size.height /3),
      radius: 10,
    ));

    var center = size/2;
    var paint = Paint()..color = Colors.black;
    // canvas.drawCircle(Offset(center.width, center.height), 10.0, paintVar);
    canvas.drawPath(path, paint2);

    // DETERMINING THE PATH TO BE DRAWN

    var path2 = Path();
    var angle = (pi * 2) / 2;

    Offset center2 = Offset(size.width / 2, size.height / 2);

// startPoint => (100.0, 0.0)
    Offset startPoint = Offset(10 * cos(0.0), 10 * sin(0.0));

    path.moveTo(startPoint.dx + center2.dx, startPoint.dy + center2.dy);

    for (int i = 1; i <= 2; i++) {
      double x = 10 * cos(angle * i) + center2.dx;
      double y = 10 * sin(angle * i) + center2.dy;
      path.lineTo(x, y);
    }
    path2.close();

  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}