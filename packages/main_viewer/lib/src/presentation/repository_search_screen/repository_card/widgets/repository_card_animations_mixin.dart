import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

mixin RepositoryCardAnimationsMixin {
  Widget textAnimation(
          {required Widget child,
          Duration delay = Duration.zero,
          bool stoppedAnimation = false}) =>
      stoppedAnimation
          ? child
          : FadeInLeft(
              from: 10,
              duration: const Duration(milliseconds: 300),
              delay: delay,
              child: child);

  Widget imageAnimation(
          {required Widget child,
          Duration delay = Duration.zero,
          bool stoppedAnimation = false}) =>
      stoppedAnimation ? child : ElasticIn(delay: delay, child: child);

  Duration getDelayDuration(int milliseconds, {required int sharedDelay}) =>
      Duration(milliseconds: milliseconds + sharedDelay);
}
