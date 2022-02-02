import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizedChildWidget extends SingleChildRenderObjectWidget {
  final Widget childWidget;
  final Function(Size size) childSized;

  const SizedChildWidget(
      {Key? key, required this.childWidget, required this.childSized})
      : super(key: key, child: childWidget);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return SizedChildRender(childSized);
  }
}

class SizedChildRender extends RenderProxyBox {
  final Function(Size size) childSized;

  SizedChildRender(this.childSized, {RenderBox? child}) : super(child);

  @override
  void performLayout() {
    super.performLayout();
    childSized(child!.size);
  }
}
