import 'package:flutter/material.dart';
import 'package:flutter_update/widget/keys/stateful_color.dart';

class SwapColorDemo5 extends StatefulWidget {
  const SwapColorDemo5({Key? key}) : super(key: key);

  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo5> {
  late List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      Padding(
        key: Key(DateTime.now().toIso8601String()),
        padding: const EdgeInsets.all(8.0),
        child: StatefulColor(key: Key(DateTime.now().toIso8601String())),
      ),
      Padding(
        key: Key(DateTime.now().toIso8601String()),
        padding: const EdgeInsets.all(26.0),
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
      body: Row(
        children: widgets,
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
