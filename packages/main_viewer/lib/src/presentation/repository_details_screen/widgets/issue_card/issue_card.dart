import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:main_viewer/src/domain/models/issue_data/issue_data.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issue_card/issue_date.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issue_card/issue_labels.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issue_card/issue_title.dart';
import 'package:main_viewer/src/presentation/repository_details_screen/widgets/issue_card/user_avatar_and_login.dart';

class IssueCard extends StatelessWidget {
  const IssueCard({
    super.key,
    required this.issueData,
  });
  final IssueData issueData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _cardPadding(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UserAvatarAndLogin(
                        userAvatarUrl: issueData.userAvatarUrl,
                        userLogin: issueData.userLogin),
                    IssueDate(
                        animationDelay: _getDelayDuration(50),
                        createdAt: issueData.createdAt)
                  ]),
            ),
            const SizedBox(height: 8.0),
            _cardPadding(
                child: IssueTitle(
                    title: issueData.title,
                    animationDelay: _getDelayDuration(50))),
            const SizedBox(height: 12),
            if (issueData.labels.isNotEmpty)
              IssueLabels(labels: issueData.labels)
          ],
        ),
      ),
    );
  }

  Duration _getDelayDuration(int milliseconds) =>
      Duration(milliseconds: milliseconds);

  Padding _cardPadding({required Widget child}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: child);
}
