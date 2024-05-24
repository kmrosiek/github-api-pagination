import 'package:animate_do/animate_do.dart';
import 'package:common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:main_viewer/src/domain/models/issue_data/issue_data.dart';

class IssueCard extends StatelessWidget {
  const IssueCard({
    super.key,
    required this.issueData,
  });
  final IssueData issueData;

  FadeInLeft fadeInL({required Widget child, Duration delay = Duration.zero}) =>
      FadeInLeft(
          from: 10,
          duration: const Duration(milliseconds: 300),
          delay: delay,
          child: child);

  Duration _getDelayDuration(int milliseconds) =>
      Duration(milliseconds: milliseconds);

  Padding _cardPadding({required Widget child}) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: child);

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
                  Row(
                    children: [
                      ElasticIn(
                        child: Image.network(
                          issueData.userAvatarUrl,
                          width: 20.0,
                          height: 20.0,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      fadeInL(
                        child: Text(issueData.userLogin,
                            style: const TextStyle(
                              fontSize: 12.0,
                            )),
                      ),
                    ],
                  ),
                  FadeInLeft(
                      from: 10,
                      duration: const Duration(milliseconds: 300),
                      delay: _getDelayDuration(50),
                      child: Text(
                          DateFormat('dd MMMM yyyy')
                              .format(issueData.createdAt),
                          style: const TextStyle(
                            fontSize: 12.0,
                          ))),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            _cardPadding(
              child: SizedBox(
                child: fadeInL(
                  child: Text(issueData.title,
                      maxLines: 3, overflow: TextOverflow.ellipsis),
                  delay: _getDelayDuration(50),
                ),
              ),
            ),
            const SizedBox(height: 12),
            if (issueData.labels.isNotEmpty)
              SizedBox(
                width: double.infinity,
                height: 24,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  const SizedBox(width: 16),
                  ...issueData.labels.map((label) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                          color: label.color.withAlpha(100),
                          border: Border.all(color: label.color),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Text(
                        label.text,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 9.0,
                            color: _darken(label.color)),
                      )))
                ]),
              ),
          ],
        ),
      ),
    );
  }

  Color _darken(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }
}
