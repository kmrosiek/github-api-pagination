import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:main_viewer/src/application/repository_search_cubit/repository_search_cubit.dart';
import 'package:main_viewer/src/domain/models/repository_data/repository_data.dart';
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
                    headerSliverBuilder: (_, __) =>
                        [const RepositorySearchTextField()],
                    body: state.notEnoughCharsToSearch
                        ? const SizedBox.shrink()
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Dim.screenPadding),
                            child: state.dataOrFailure.fold(
                                (failure) => _buildFailureWidget(), (data) {
                              if (state.isLoading) {
                                return ListView(
                                    padding: EdgeInsets.zero,
                                    children: _loadingState);
                              }
                              if (data.isEmpty) {
                                return const Center(
                                    child: Text('Repositories not found'));
                              }
                              return ListView(
                                  padding: EdgeInsets.zero,
                                  children: _buildRepositoryCards(data));
                            }))))
          ],
        );
      },
    );
  }

  List<Widget> _buildRepositoryCards(List<RepositoryData> data) {
    final List<Widget> cards = [];
    for (int i = 0; i < data.length; i++) {
      cards.add(Hero(
          tag: 'hero_$i',
          child: RepositoryCard(
              index: i,
              repositoryData: data[i],
              cardAnimationDelay: _makeAnimationDelayForFirst5Cards(i))));
    }
    return cards;
  }

  int _makeAnimationDelayForFirst5Cards(int i) => i < 5 ? i * 100 : 0;

  Column _buildFailureWidget() {
    return const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(FontAwesomeIcons.triangleExclamation, size: 50),
      Text('Error occured'),
    ]);
  }

  List<Widget> get _loadingState =>
      List.generate(5, (index) => const LoadingBorderRepositoryCard());
}
