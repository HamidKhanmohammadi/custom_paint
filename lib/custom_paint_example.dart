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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: CustomPaint(
            child: Container(),
            painter: DemoPainter(),
          ),
        ) ,
      ),
    );
  }
}