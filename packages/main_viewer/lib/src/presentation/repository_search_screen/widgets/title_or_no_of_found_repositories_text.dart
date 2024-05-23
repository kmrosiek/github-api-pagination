import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class TitleOrNoOfFoundRepositoriesText extends StatelessWidget {
  const TitleOrNoOfFoundRepositoriesText(
      {super.key, required this.noOfFoundReposOrNothing});
  final Option<int> noOfFoundReposOrNothing;

  @override
  Widget build(BuildContext context) {
    final text = noOfFoundReposOrNothing.fold(() => 'GitHub',
        (noOfFoundRepos) => '$noOfFoundRepos repositories found');
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
          child: Text(text,
              key: ValueKey(text),
              style: TextStyle(
                  fontSize: noOfFoundReposOrNothing.fold(() => 30, (_) => 20),
                  fontWeight: noOfFoundReposOrNothing.fold(
                      () => FontWeight.bold, (_) => FontWeight.normal))),
        ),
      ),
    );
  }
}
