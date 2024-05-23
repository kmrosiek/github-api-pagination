import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_animations_mixin.dart';

class ProgrammingLanguageRow extends StatelessWidget
    with RepositoryCardAnimationsMixin {
  const ProgrammingLanguageRow(
      {super.key,
      required this.userAvatarUrl,
      required this.programmingLanguageName,
      required this.cardAnimationDelay});
  final String userAvatarUrl; //TODO remove probably
  final String programmingLanguageName;
  final int cardAnimationDelay;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        imageAnimation(
          delay: getDelayDuration(100, sharedDelay: cardAnimationDelay),
          child: SvgPicture.network(
            'https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/94e9ce8064716dcae11787102e6f35e10aa77246/icons/javascript.svg',
            width: 20.0,
            height: 20.0,
          ),
        ),
        const SizedBox(width: 8.0),
        textAnimation(
            child: Text(programmingLanguageName),
            delay: getDelayDuration(150, sharedDelay: cardAnimationDelay)),
      ],
    );
  }
}
