import 'package:flutter/material.dart';
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
            child: Image.network(ownerAvatarUrl,
                width: 20,
                height: 20,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.person, size: 20))),
        const SizedBox(width: 8.0),
        Flexible(
          child: textAnimation(
            stoppedAnimation: stoppedAnimation,
            child: Text(ownerLogin,
                style: const TextStyle(fontSize: 12.0), maxLines: 2),
          ),
        ),
      ],
    );
  }
}
