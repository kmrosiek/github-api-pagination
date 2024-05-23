import 'package:flutter/material.dart';

class TitleOrNoOfFoundRepositoriesText extends StatelessWidget {
  const TitleOrNoOfFoundRepositoriesText({super.key, required this.showTitle});
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: Text(
            showTitle ? 'GitHub' : '14 repositories found',
            key: ValueKey(showTitle),
            style: TextStyle(
                fontSize: showTitle ? 30 : 20,
                fontWeight: showTitle ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
