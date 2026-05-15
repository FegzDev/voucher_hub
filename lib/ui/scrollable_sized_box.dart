import 'package:flutter/material.dart';

class ScrollableSizedBox extends StatelessWidget {
  final bool infiniteHeight;
  final WidgetBuilder builder;

  const ScrollableSizedBox({
    super.key,
    this.infiniteHeight = false,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: constraints.copyWith(
              maxHeight: infiniteHeight ? double.infinity : null,
            ),
            child: builder(context),
          ),
        );
      },
    );
  }
}
