import 'package:flutter/material.dart';
import 'package:flutter_update/widget/util/UniqueColorGenerator.dart';

class StatelessColor extends StatelessWidget {
  final Color defaultColor = UniqueColorGenerator().getColor();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Container(
        color: defaultColor,
      ),
    );
  }

  StatelessColor({Key? key}) : super(key: key);
}
