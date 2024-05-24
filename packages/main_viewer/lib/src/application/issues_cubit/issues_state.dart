part of 'issues_cubit.dart';

@freezed
abstract class IssuesState with _$IssuesState {
  const factory IssuesState({
    required bool isLoading,
    required List<IssueData> issues,
    required Option<Failure> maybeFailure,
    required int paginationPage,
  }) = _IssuesState;

  static const int paginationPageSize = 10;

  factory IssuesState.initial() => const IssuesState(
      isLoading: false, issues: [], maybeFailure: None(), paginationPage: 1);
}
