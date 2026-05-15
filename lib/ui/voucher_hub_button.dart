import 'package:flutter/material.dart';

class VoucherHubButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;

  const VoucherHubButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: FilledButton(onPressed: onPressed, child: child),
    );
  }
}
