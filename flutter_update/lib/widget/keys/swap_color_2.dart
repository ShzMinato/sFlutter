import 'package:flutter/material.dart';
import 'package:flutter_update/widget/keys/stateful_color.dart';

class SwapColorDemo2 extends StatefulWidget {
  const SwapColorDemo2({Key? key}) : super(key: key);

  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo2> {
  late List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      const StatefulColor(),
      const StatefulColor(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful_without_key'),
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
