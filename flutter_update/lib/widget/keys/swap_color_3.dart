import 'package:flutter/material.dart';
import 'package:flutter_update/widget/keys/stateful_color.dart';

class SwapColorDemo3 extends StatefulWidget {
  const SwapColorDemo3({Key? key}) : super(key: key);

  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo3> {
  late List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      StatefulColor(key: UniqueKey()),
      StatefulColor(key: UniqueKey()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful_with_key'),
      ),
      body: SafeArea(
        child: Row(
          children: widgets,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.swap_horiz),
        onPressed: swapTile,
      ),
    );
  }

  swapTile() {
    setState(() {
      widgets.insert(1, widgets.removeAt(0));
    });
  }
}
