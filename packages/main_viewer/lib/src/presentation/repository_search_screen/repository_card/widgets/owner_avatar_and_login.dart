import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_animations_mixin.dart';

class OwnerAvatarAndLogin extends StatelessWidget
    with RepositoryCardAnimationsMixin {
  const OwnerAvatarAndLogin(
      {super.key,
      required this.ownerLogin,
      required this.ownerAvatarUrl,
      required this.stoppedAnimation});
  final String ownerLogin;
  final String ownerAvatarUrl;
  final bool stoppedAnimation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        imageAnimation(
            stoppedAnimation: stoppedAnimation,
            child: const Icon(FontAwesomeIcons.github)), //TODO replace avatar
        const SizedBox(width: 8.0),
        textAnimation(
          stoppedAnimation: stoppedAnimation,
          child: Text(ownerLogin,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              )),
        ),
      ],
    );
  }
}
