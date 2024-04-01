import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'demo_paint.dart';

class CustomPaintExample extends StatefulWidget {
  const CustomPaintExample({super.key});

  @override
  State<CustomPaintExample> createState() => _CustomPaintExampleState();
}

class _CustomPaintExampleState extends State<CustomPaintExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: DemoPainter(),
        ),
      ) ,
    );
  }
}