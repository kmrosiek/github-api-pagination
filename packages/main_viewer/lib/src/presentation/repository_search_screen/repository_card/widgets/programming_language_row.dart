import 'package:common/svg_picture_network.dart';
import 'package:flutter/material.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_animations_mixin.dart';

class ProgrammingLanguageRow extends StatelessWidget
    with RepositoryCardAnimationsMixin {
  const ProgrammingLanguageRow(
      {super.key,
      required this.programmingLanguageName,
      required this.cardAnimationDelay,
      required this.stoppedAnimation});
  final String programmingLanguageName;
  final int cardAnimationDelay;
  final bool stoppedAnimation;

  static const languagesIconsUrl =
      'https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/main/icons/';

  @override
  Widget build(BuildContext context) {
    final language = programmingLanguageName.isEmpty
        ? 'readme'
        : programmingLanguageName.toLowerCase();
    return Row(
      children: [
        imageAnimation(
            stoppedAnimation: stoppedAnimation,
            delay: getDelayDuration(100, sharedDelay: cardAnimationDelay),
            child: SvgPictureNetwork(
                url: '$languagesIconsUrl$language.svg',
                errorWidget: const Icon(Icons.language, size: 20),
                width: 20,
                height: 20)),
        const SizedBox(width: 8.0),
        textAnimation(
            stoppedAnimation: stoppedAnimation,
            delay: getDelayDuration(150, sharedDelay: cardAnimationDelay),
            child: Text(programmingLanguageName))
      ],
    );
  }
}
