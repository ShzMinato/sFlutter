import 'package:flutter/material.dart';
import 'package:flutter_update/widget/keys/stateless_color.dart';

class SwapColorDemo1 extends StatefulWidget {
  const SwapColorDemo1({Key? key}) : super(key: key);

  @override
  _SwapColorDemo1State createState() => _SwapColorDemo1State();
}

class _SwapColorDemo1State extends State<SwapColorDemo1> {
  late List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [StatelessColor(), StatelessColor()];
  }

  swapTile() {
    setState(() {
      widgets.insert(1, widgets.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless'),
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
}
