import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/sized_child_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedContainer();
  }
}

class RedContainer extends StatelessWidget {
  const RedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class SizedContainer extends StatelessWidget {
  const SizedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedChildWidget(
          childWidget: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          childSized: (Size size) {
            if (kDebugMode) {
              print(size);
            }
          },
        ),
      ),
    );
  }
}
