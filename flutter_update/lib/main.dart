import 'package:flutter/material.dart';
import 'package:flutter_update/widget/keys/swap_color_1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SwapColorDemo1(), //Stateless
      // home: SwapColorDemo2(), //stateful without key
      // home: SwapColorDemo3(), //stateful with key
      // home: SwapColorDemo4(), //padding without key
      // home: SwapColorDemo5(), //padding  key
    );
  }
}
