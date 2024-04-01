import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPainter extends CustomPainter {

  var paintVar = Paint()
    ..color = Colors.yellow
    ..strokeWidth = 20.0;


  @override
  void paint(Canvas canvas, Size size) {
    var center = size/2;
    var paint = Paint()..color = Colors.black;
    canvas.drawCircle(Offset(center.width, center.height), 10.0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}