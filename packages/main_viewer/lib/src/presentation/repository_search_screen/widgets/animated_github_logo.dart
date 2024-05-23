import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedGithubLogo extends StatelessWidget {
  const AnimatedGithubLogo({super.key, required this.scaleAnimation});
  final Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        sizeFactor: scaleAnimation,
        child: const Center(child: Icon(FontAwesomeIcons.github, size: 80)));
  }
}
