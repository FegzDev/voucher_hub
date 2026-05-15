import 'package:flutter/material.dart';

class ScreenPadding extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  const ScreenPadding({super.key, this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? ScreenPaddingDefaults.padding,
      child: child,
    );
  }
}

final class ScreenPaddingDefaults {
  ScreenPaddingDefaults._();

  static const padding = EdgeInsetsGeometry.symmetric(
    vertical: 16,
    horizontal: 8,
  );
}
