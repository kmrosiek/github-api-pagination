import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main_viewer/src/domain/models/issue_data/issue_label.dart';

part 'issue_data.freezed.dart';

@freezed
abstract class IssueData with _$IssueData {
  const factory IssueData({
    required String title,
    @Deprecated('subtitle is currenly not used') String? subtitle,
    required String userAvatarUrl,
    required String userLogin,
    required List<IssueLabel> labels,
    required DateTime createdAt,
  }) = _IssueData;

  factory IssueData.fromJson(Map<String, dynamic> json) {
    return IssueData(
        title: json['title'],
        userAvatarUrl: json['user']['avatar_url'],
        userLogin: json['user']['login'],
        labels: (json['labels'] as List<dynamic>)
            .map((e) => IssueLabel(
                color: Color(int.parse("0xFF${e['color']}")), text: e['name']))
            .toList(),
        createdAt: DateTime.parse(json['created_at']));
  }
}
