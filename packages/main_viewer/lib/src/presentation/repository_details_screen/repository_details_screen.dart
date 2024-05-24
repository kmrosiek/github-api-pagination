import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:main_viewer/src/domain/repository_data/repository_data.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issues_list.dart';
import 'package:main_viewer/src/presentation/repository_search_screen/repository_card/repository_card.dart';

class RepositoryDetailsScreen extends StatelessWidget {
  const RepositoryDetailsScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          surfaceTintColor: Colors.transparent),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Hero(
                tag: 'hero_$index',
                child: RepositoryCard(
                    repositoryData: repositoryExample,
                    index: index,
                    stoppedAnimation: true,
                    hideCardStyle: true)),
            ..._issuesTitle,
            const IssuesList(),
          ],
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
