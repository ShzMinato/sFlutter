import 'package:flutter/material.dart';
import 'package:flutter_update/widget/keys/stateful_color.dart';

class SwapColorDemo4 extends StatefulWidget {
  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo4> {
  late List<Widget> widgets;

  @override
  void initState() {
    super.initState();

    widgets = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: StatefulColor(key: Key(DateTime.now().toIso8601String())),
      ),
      Padding(
        padding: const EdgeInsets.all(6.0),
        child: StatefulColor(key: Key(DateTime.now().toIso8601String())),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful_padding_with_key'),
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
