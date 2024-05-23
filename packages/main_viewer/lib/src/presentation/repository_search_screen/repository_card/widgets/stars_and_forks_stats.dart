import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_animations_mixin.dart';

class StarsAndForksStats extends StatelessWidget
    with RepositoryCardAnimationsMixin {
  const StarsAndForksStats(
      {super.key,
      required this.starsCount,
      required this.forksCount,
      required this.cardAnimationDelay});
  final int starsCount;
  final int forksCount;
  final int cardAnimationDelay;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        imageAnimation(
            delay: getDelayDuration(150, sharedDelay: cardAnimationDelay),
            child: const Icon(FontAwesomeIcons.star, size: 16.0)),
        const SizedBox(width: 4.0),
        Text(starsCount.toString()),
        const SizedBox(width: 16.0),
        imageAnimation(
            delay: getDelayDuration(200, sharedDelay: cardAnimationDelay),
            child: const Icon(FontAwesomeIcons.codeFork, size: 16.0)),
        const SizedBox(width: 4.0),
        Text(forksCount.toString()),
      ],
    );
  }
}
