import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:main_viewer/src/domain/issue_data/issue_data.dart';
import 'package:main_viewer/src/domain/issue_data/issue_label.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issue_card.dart';

class IssuesList extends StatelessWidget {
  const IssuesList({super.key});
  static final IssueData issueData = IssueData(
      title: 'Issue title',
      subtitle: '#123123',
      userAvatarUrl: 'https://avatars.githubusercontent.com/u/840911?v=4',
      userLogin: 'rocky',
      labels: [const IssueLabel(text: 'main', color: Colors.amber)],
      createdAt: DateTime(2022, 2, 2));

  @override
  Widget build(BuildContext context) {
    final _issues = [1, 2, 3, 4, 5];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: Column(
          children:
              _issues.map((issue) => IssueCard(issueData: issueData)).toList()),
    );
    return ListView.builder(
      //controller: _scrollController,
      itemCount: _issues.length,
      itemBuilder: (context, index) {
        if (index == _issues.length) {
          return const Center(child: CircularProgressIndicator());
        }
        return IssueCard(issueData: issueData);
      },
    );
  }
}
