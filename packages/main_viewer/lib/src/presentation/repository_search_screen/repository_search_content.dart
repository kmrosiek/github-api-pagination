import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/cubit/repository_search_cubit.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/loading_border_repository_card.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/repository_card.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/widgets/animated_github_logo.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/widgets/animated_spacer_to_center_text_field.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/widgets/repository_search_text_field.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/widgets/title_or_no_of_found_repositories_text.dart';

part 'github_logo_animation_mixin.dart';

class RepositorySearchContent extends StatefulWidget {
  const RepositorySearchContent({super.key});

  @override
  State<RepositorySearchContent> createState() =>
      _RepositorySearchContentState();
}

class _RepositorySearchContentState extends State<RepositorySearchContent>
    with SingleTickerProviderStateMixin, _GitHubLogoAnimationMixin {
  @override
  void initState() {
    super.initState();
    initialiseAnimation(this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepositorySearchCubit, RepositorySearchState>(
      builder: (context, state) {
        return Column(
          children: [
            AnimatedSpacerToCenterTextField(
                shouldCenter: state.notEnoughCharsToSearch),
            AnimatedGithubLogo(scaleAnimation: githubLogoScaleAnimation),
            TitleOrNoOfFoundRepositoriesText(
                noOfFoundReposOrNothing: state.noOfFoundReposOrNothing),
            Expanded(
                flex: 2,
                child: NestedScrollView(
                    key: _nestedScrollViewKey,
                    floatHeaderSlivers: true,
                    headerSliverBuilder: (context, __) =>
                        [const RepositorySearchTextField()],
                    body: state.notEnoughCharsToSearch
                        ? const SizedBox.shrink()
                        : ListView(padding: EdgeInsets.zero, children: [
                            ...List.generate(10, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: state.isLoading
                                    ? const LoadingBorderRepositoryCard()
                                    : RepositoryCard(
                                        delayBase:
                                            index < 5 ? index * 100 : 0.0),
                              );
                            })
                          ]))),
          ],
        );
      },
    );
  }
}
