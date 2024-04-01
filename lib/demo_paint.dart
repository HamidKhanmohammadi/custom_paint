import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoPainter extends CustomPainter {

  var paintVar = Paint()
    ..color = Colors.black
    ..strokeWidth = 200.0;


  @override
  void paint(Canvas canvas, Size size) {
    var center = size/2;
    var paint = Paint()..color = Colors.black;
    canvas.drawCircle(Offset(center.width, center.height), 10.0, paintVar);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}