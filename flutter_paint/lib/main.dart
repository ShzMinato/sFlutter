import 'package:flutter/material.dart';
import 'package:flutter_paint/paint_test.dart';

void main() {
  runApp(const PaintWidget());
}

class PaintWidget extends StatefulWidget {
  const PaintWidget({Key? key}) : super(key: key);

  @override
  State<PaintWidget> createState() => _PaintWidgetState();
}

class _PaintWidgetState extends State<PaintWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: CustomPaint(
        painter: MyPainter(animationController), //第二处
      ),
    );
  }
}
