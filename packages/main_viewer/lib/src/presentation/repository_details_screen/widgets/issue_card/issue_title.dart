import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class IssueTitle extends StatelessWidget {
  const IssueTitle(
      {super.key, required this.title, required this.animationDelay});
  final String title;
  final Duration animationDelay;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      from: 10,
      duration: const Duration(milliseconds: 300),
      delay: animationDelay,
      child: Text(title, maxLines: 3, overflow: TextOverflow.ellipsis),
    );
  }
}
