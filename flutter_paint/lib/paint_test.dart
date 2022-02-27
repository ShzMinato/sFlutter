import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  late List<Offset> points;
  late Animation<double> animation;

  MyPainter(this.animation) :super(repaint: animation) {
    _initPoints();
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2);
    Paint paint = Paint();
    paint.color = Colors.red;
    paint.strokeWidth = 2;
    paint.style = PaintingStyle.stroke;

    Path path = Path();
    path.moveTo(points[0].dx, points[0].dy);
    for (int i = 1; i < points.length; i++) {
      double controllerX = (points[i].dx + points[i - 1].dx) / 2;
      double controllerY = (points[i].dy + points[i - 1].dy) / 2;

      path.quadraticBezierTo(
          controllerX, controllerY, points[i].dx, points[i].dy);
    }
    PathMetrics metrics = path.computeMetrics();
    metrics.forEach((element) {
      Tangent? tangent = element.getTangentForOffset(
          element.length * animation.value);
      Path path = element.extractPath(0, element.length * animation.value);
      canvas.drawPath(path, paint);
      if (tangent != null) {
        paint.style = PaintingStyle.fill;
        paint.color = Colors.blue;
        canvas.drawCircle(tangent.position, 3, paint);
      }
    });
  }

  void _initPoints() {
    points = [];
    for (int i = 0; i < 360; i++) {
      double thta = _convert(i);
      double p = _calY(thta);
      points.add(Offset(p * cos(thta), p * sin(thta)));
    }
  }

  double _calY(double x) {
    return 50 * (pow(e, cos(x)) - 2 * cos(4 * x)) + pow(sin(x / 12), 5);
  }

  double _convert(int x) {
    return pi / 180 * x;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
