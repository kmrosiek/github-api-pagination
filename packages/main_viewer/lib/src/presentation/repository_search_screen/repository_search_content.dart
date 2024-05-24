import 'package:common/constants/dim.dart';
import 'package:common/get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/main_viewer.dart';
import 'package:main_viewer/src/application/issues_cubit/issues_cubit.dart';
import 'package:main_viewer/src/application/repository_search_cubit/repository_search_cubit.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BlocProvider(
                create: (context) => getIt<IssuesCubit>(
                    param1: 'ownerLogin', param2: 'repoName'),
                child: const RepositoryDetailsScreen(index: 1),
              )));
    });
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Dim.screenPadding),
                                child: state.isLoading
                                    ? const LoadingBorderRepositoryCard()
                                    : Hero(
                                        tag: 'hero_$index',
                                        child: RepositoryCard(
                                            index: index,
                                            repositoryData:
                                                repositoryExample, //TODO replace
                                            cardAnimationDelay:
                                                index < 5 ? index * 100 : 0),
                                      ),
                              );
                            })
                          ]))),
          ],
        );
      },
    );
  }
}
