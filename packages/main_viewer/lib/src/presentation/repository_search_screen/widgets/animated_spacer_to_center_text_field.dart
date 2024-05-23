import 'package:flutter/material.dart';

class AnimatedSpacerToCenterTextField extends StatelessWidget {
  const AnimatedSpacerToCenterTextField(
      {super.key, required this.shouldCenter});
  final bool shouldCenter;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: shouldCenter ? 1 : 0,
        child: AnimatedSize(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut,
            child: SizedBox(height: shouldCenter ? double.infinity : 0)));
  }
}
