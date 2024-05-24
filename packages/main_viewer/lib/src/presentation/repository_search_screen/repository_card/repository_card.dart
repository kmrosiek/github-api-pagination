import 'package:common/constants/app_colors.dart';
import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/issues_cubit/issues_cubit.dart';
import 'package:main_viewer/src/domain/models/repository_data/repository_data.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/repository_details_screen.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/owner_avatar_and_login.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/programming_language_row.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/repository_card_animations_mixin.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/widgets/stars_and_forks_stats.dart';

class RepositoryCard extends StatelessWidget
    with RepositoryCardAnimationsMixin {
  const RepositoryCard({
    super.key,
    required this.repositoryData,
    this.cardAnimationDelay = 0,
    required this.index,
    this.hideCardStyle = false,
    this.stoppedAnimation = false,
  });
  final int cardAnimationDelay;
  final int index;
  final RepositoryData repositoryData;
  final bool hideCardStyle;
  final bool stoppedAnimation;

  bool get hideBorder => hideCardStyle;
  bool get hideElevation => hideCardStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: hideElevation ? 0.0 : null,
      shape: RoundedRectangleBorder(
          borderRadius:
              const BorderRadius.all(Radius.circular(Dim.borderRadius)),
          side: BorderSide(
              color: hideBorder ? Colors.transparent : AppColors.border)),
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => IssuesCubit(),
                  child: RepositoryDetailsScreen(index: index),
                ))),
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
