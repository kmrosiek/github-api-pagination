import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main_viewer/main_viewer.dart';
import 'package:main_viewer/main_viewer_test_exports.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/bloc_listener_for_error_message.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issues_list.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/loading_indicator_and_retry_button.dart';

part 'list_view_controller_with_pagination_mixin.dart';

class RepositoryDetailsContent extends StatefulWidget {
  const RepositoryDetailsContent(
      {super.key, required this.repoIndex, required this.repositoryData});
  final int repoIndex;
  final RepositoryData repositoryData;

  @override
  State<RepositoryDetailsContent> createState() =>
      _RepositoryDetailsContentState();
}

class _RepositoryDetailsContentState extends State<RepositoryDetailsContent>
    with ListViewControllerWithPaginationMixin {
  @override
  Widget build(BuildContext context) {
    return BlocListenerForErrorMessage(
      child: ListView(
        controller: listViewScrollController,
        children: [
          Hero(
              tag: 'hero_${widget.repoIndex}',
              child: RepositoryCard(
                  repositoryData: widget.repositoryData,
                  index: widget.repoIndex,
                  stoppedAnimation: true,
                  hideCardStyle: true)),
          _divider,
          const IssuesList(),
          const LoadingIndicatorAndRetryButton(),
        ],
      ),
    );
  }

  Widget get _divider => const Padding(
      padding: EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: Divider());
}
