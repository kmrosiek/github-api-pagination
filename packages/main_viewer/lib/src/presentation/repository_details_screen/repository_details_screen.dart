import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/src/application/issues_cubit/issues_cubit.dart';
import 'package:main_viewer/src/domain/models/repository_data/repository_data.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/bloc_listener_for_error_message.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issues_list.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/loading_indicator_and_retry_button.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/repository_card.dart';

part 'list_view_controller_with_pagination_mixin.dart';

class RepositoryDetailsScreen extends StatefulWidget {
  const RepositoryDetailsScreen({super.key, required this.index});
  final int index;

  @override
  State<RepositoryDetailsScreen> createState() =>
      _RepositoryDetailsScreenState();
}

class _RepositoryDetailsScreenState extends State<RepositoryDetailsScreen>
    with ListViewControllerWithPaginationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        bottom: false,
        child: BlocListenerForErrorMessage(
          child: ListView(
            controller: listViewScrollController,
            children: [
              Hero(
                  tag: 'hero_${widget.index}',
                  child: RepositoryCard(
                      repositoryData: repositoryExample,
                      index: widget.index,
                      stoppedAnimation: true,
                      hideCardStyle: true)),
              ..._issuesTitle,
              const IssuesList(),
              const LoadingIndicatorAndRetryButton(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> get _issuesTitle => [
        _divider,
        const Center(
            child: Text('Issues',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
        _divider
      ];

  Widget get _divider => const Padding(
      padding: EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: Divider());
}
