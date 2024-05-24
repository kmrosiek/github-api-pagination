import 'dart:developer';

import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';

@LazySingleton(as: IIssuesRepository)
class IssuesRepository implements IIssuesRepository {
  final IssueData issueData = IssueData(
      title: 'Issue titXXle',
      userAvatarUrl: 'https://avatars.githubusercontent.com/u/840911?v=4',
      userLogin: 'rocky',
      labels: [const IssueLabel(text: 'mainstream', color: Colors.amber)],
      createdAt: DateTime(2022, 2, 2));
  @override
  Future<FailureOrDataAndHasMoreToFetch> fetch(
      {required String ownerLogin, required String repositoryName}) async {
    log('Fetching issues for owner: $ownerLogin and repo name: $repositoryName');
    await Future.delayed(const Duration(milliseconds: 1500), () => 1);
    final aStr = ownerLogin.replaceAll(RegExp(r'[^0-9]'), '');
    final aInt = int.parse(aStr);
    final a = (
      Right<Failure, List<IssueData>>(List.generate(aInt, (i) => issueData)),
      aInt == 4
    );
    //const b = (Left<Failure, List<IssueData>>(Failure()), false);
    return Future.value(a);
  }
}
