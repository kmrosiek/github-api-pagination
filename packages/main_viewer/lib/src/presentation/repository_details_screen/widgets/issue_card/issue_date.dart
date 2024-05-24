import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IssueDate extends StatelessWidget {
  const IssueDate(
      {super.key, required this.animationDelay, required this.createdAt});
  final Duration animationDelay;
  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
        from: 10,
        duration: const Duration(milliseconds: 300),
        delay: animationDelay,
        child: Text(DateFormat('dd MMMM yyyy').format(createdAt),
            style: const TextStyle(fontSize: 12.0)));
  }
}
