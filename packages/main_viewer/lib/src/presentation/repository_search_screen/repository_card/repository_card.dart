import 'package:flutter/material.dart';
import 'package:main_viewer/src/domain/repository_data/repository_data.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/repository_details_screen.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/owner_avatar_and_login.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/programming_language_row.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_animations_mixin.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_border.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/stars_and_forks_stats.dart';

class RepositoryCard extends StatelessWidget
    with RepositoryCardAnimationsMixin {
  const RepositoryCard(
      {super.key,
      required this.repositoryData,
      this.cardAnimationDelay = 0,
      required this.index,
      this.hideBorder = false,
      this.stoppedAnimation = false});
  final int cardAnimationDelay;
  final int index;
  final RepositoryData repositoryData;
  final bool hideBorder;
  final bool stoppedAnimation;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RepositoryDetailsScreen(index: index))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(RepositoryCardBorder.borderRadius),
              border: Border.all(
                  color: hideBorder
                      ? Colors.transparent
                      : RepositoryCardBorder.borderColor)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OwnerAvatarAndLogin(
                        stoppedAnimation: stoppedAnimation,
                        ownerLogin: repositoryData.ownerName,
                        ownerAvatarUrl: repositoryData.ownerAvatarUrl),
                    _buildRepositoryName(),
                  ],
                ),
                const SizedBox(height: 8.0),
                _buildRepositoryDescription(),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProgrammingLanguageRow(
                        stoppedAnimation: stoppedAnimation,
                        userAvatarUrl: repositoryData.ownerAvatarUrl,
                        programmingLanguageName:
                            repositoryData.programmingLanguage,
                        cardAnimationDelay: cardAnimationDelay),
                    StarsAndForksStats(
                        stoppedAnimation: stoppedAnimation,
                        starsCount: repositoryData.stars,
                        forksCount: repositoryData.forks,
                        cardAnimationDelay: cardAnimationDelay)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRepositoryName() {
    return textAnimation(
        delay: getDelayDuration(50, sharedDelay: cardAnimationDelay),
        stoppedAnimation: stoppedAnimation,
        child: Text(repositoryData.repositoryName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            )));
  }

  SizedBox _buildRepositoryDescription() {
    return SizedBox(
      height: 40,
      child: textAnimation(
        delay: getDelayDuration(50, sharedDelay: cardAnimationDelay),
        stoppedAnimation: stoppedAnimation,
        child: Text(repositoryData.description, maxLines: 2),
      ),
    );
  }
}
