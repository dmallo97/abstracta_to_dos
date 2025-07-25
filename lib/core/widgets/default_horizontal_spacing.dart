import 'package:flutter/material.dart';

class DefaultHorizontalSpacing extends StatelessWidget {
  const DefaultHorizontalSpacing({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: child,
    );
  }
}
