import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:main_viewer/src/domain/models/issue_data/issue_data.dart';

typedef FailureOrDataAndHasMoreToFetch = (
  Either<Failure, List<IssueData>>,
  bool
);

abstract class IIssuesRepository {
  FailureOrDataAndHasMoreToFetch fetch(
      {required String ownerLogin, required String repositoryName});
}
