import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

mixin RepositoryCardAnimationsMixin {
  FadeInLeft textAnimation(
          {required Widget child, Duration delay = Duration.zero}) =>
      FadeInLeft(
          from: 10,
          duration: const Duration(milliseconds: 300),
          delay: delay,
          child: child);

  ElasticIn imageAnimation(
          {required Widget child, Duration delay = Duration.zero}) =>
      ElasticIn(delay: delay, child: child);

  Duration getDelayDuration(int milliseconds, {required int sharedDelay}) =>
      Duration(milliseconds: milliseconds + sharedDelay);
}
