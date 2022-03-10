import 'package:flutter/material.dart';

class ColorManager extends InheritedWidget {
  final Color primaryColor = Colors.red;

  const ColorManager({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    // throw UnimplementedError();
    return true;
  }

  static ColorManager of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorManager>()!;
  }
}
