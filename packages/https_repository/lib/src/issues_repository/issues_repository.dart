import 'dart:developer';

import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';

@LazySingleton(as: IIssuesRepository)
class IssuesRepository implements IIssuesRepository {
  @override
  Future<FailureOrDataAndHasMoreToFetch> fetch(
      {required String ownerLogin, required String repositoryName}) async {
    log('Fetching issues for owner: $ownerLogin and repo name: $repositoryName');
    await Future.delayed(const Duration(milliseconds: 1500), () => 1);
    const a = (Right<Failure, List<IssueData>>(<IssueData>[]), true);
    return Future.value(a);
  }
}
