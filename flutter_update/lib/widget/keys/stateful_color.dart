import 'package:flutter/material.dart';
import 'package:flutter_update/widget/util/UniqueColorGenerator.dart';

class StatefulColor extends StatefulWidget {
  const StatefulColor({Key? key}) : super(key: key);

  @override
  StatefulColorfulTileState createState() => StatefulColorfulTileState();
}

class StatefulColorfulTileState extends State<StatefulColor> {
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
}
