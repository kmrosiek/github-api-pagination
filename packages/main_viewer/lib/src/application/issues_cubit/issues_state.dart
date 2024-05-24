part of 'issues_cubit.dart';

@freezed
abstract class IssuesState with _$IssuesState {
  const IssuesState._();
  const factory IssuesState({
    required bool isLoading,
    required List<IssueData> issues,
    required Option<Failure> maybeFailure,
    required int paginationPage,
    required bool hasMoreIssuesToFetch,
  }) = _IssuesState;

  static const int paginationPageSize = 10;

  bool get failureWithNoIssuesListed =>
      maybeFailure.fold(() => false, (failure) => issues.isEmpty);

  String? get getFailureMessageOrNull =>
      maybeFailure.fold(() => null, (failure) => failure.message);

  bool get canFetchMore => !isLoading && hasMoreIssuesToFetch;

  factory IssuesState.initial() => const IssuesState(
      isLoading: false,
      issues: [],
      maybeFailure: None(),
      paginationPage: 1,
      hasMoreIssuesToFetch: true);
}
