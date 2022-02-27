import 'package:flutter/material.dart';

class EntryWidget extends StatelessWidget {
  const EntryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('EntryWidget 1');
    return const Text("EntryWidget 1");
  }
}

class EntryWidget2 extends StatelessWidget {
  const EntryWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('EntryWidget 2');
    return const Text("EntryWidget 2");
  }
}
