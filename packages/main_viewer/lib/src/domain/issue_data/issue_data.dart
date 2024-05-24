import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main_viewer/src/domain/issue_data/issue_label.dart';

part 'issue_data.freezed.dart';

@freezed
abstract class IssueData with _$IssueData {
  const factory IssueData({
    required String title,
    required String subtitle,
    required String userAvatarUrl,
    required String userLogin,
    required List<IssueLabel> labels,
    required DateTime createdAt,
  }) = _IssueData;
}

final IssueData issueData = IssueData(
    title: 'Issue title',
    subtitle: '#123123',
    userAvatarUrl: 'https://avatars.githubusercontent.com/u/840911?v=4',
    userLogin: 'rocky',
    labels: [const IssueLabel(text: 'main', color: Colors.amber)],
    createdAt: DateTime(2022, 2, 2));
