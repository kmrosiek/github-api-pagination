import 'package:flutter/material.dart';

class AppSnackBar extends SnackBar {
  AppSnackBar({super.key, required String text})
      : super(content: Text(text, style: const TextStyle(color: Colors.white)));

  static show(BuildContext context, {required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(AppSnackBar(text: text));
  }
}
