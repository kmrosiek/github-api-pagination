import 'package:flutter/material.dart';
import 'package:main_viewer/src/domain/repository_data/repository_data.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/owner_avatar_and_login.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/programming_language_row.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_animations_mixin.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/stars_and_forks_stats.dart';

class RepositoryCard extends StatelessWidget
    with RepositoryCardAnimationsMixin {
  const RepositoryCard(
      {super.key, required this.repositoryData, this.cardAnimationDelay = 0});
  final int cardAnimationDelay;
  final RepositoryData repositoryData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OwnerAvatarAndLogin(
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
                  userAvatarUrl: repositoryData.ownerAvatarUrl,
                  programmingLanguageName: repositoryData.programmingLanguage,
                  cardAnimationDelay: cardAnimationDelay),
              StarsAndForksStats(
                  starsCount: repositoryData.stars,
                  forksCount: repositoryData.forks,
                  cardAnimationDelay: cardAnimationDelay)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRepositoryName() {
    return textAnimation(
        delay: getDelayDuration(50, sharedDelay: cardAnimationDelay),
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
        child: Text(repositoryData.description, maxLines: 2),
        delay: getDelayDuration(50, sharedDelay: cardAnimationDelay),
      ),
    );
  }
}
