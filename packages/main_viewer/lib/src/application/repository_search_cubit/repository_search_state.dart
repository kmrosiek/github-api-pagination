part of 'repository_search_cubit.dart';

/*@freezed
sealed class RepositorySearchState with _$RepositorySearchState {
  const factory RepositorySearchState.initial() = _Initial;
  const factory RepositorySearchState.loading() = _Loading;
  const factory RepositorySearchState.failure() = _Failure;
  const factory RepositorySearchState.success() = _Success;
}
*/

@freezed
abstract class RepositorySearchState with _$RepositorySearchState {
  const RepositorySearchState._();
  const factory RepositorySearchState({
    required bool isLoading,
    required bool notEnoughCharsToSearch,
    required Option<Either<Failure, List<RepositoryData>>> dataFailureOrNothing,
  }) = _RepositorySearchState;

  factory RepositorySearchState.initial() => const RepositorySearchState(
      isLoading: false,
      dataFailureOrNothing: None(),
      notEnoughCharsToSearch: true);

  Option<int> get noOfFoundReposOrNothing => dataFailureOrNothing.fold(
      () => const None(),
      (failureOrData) => failureOrData.fold(
          (failure) => const None(), (data) => Some(data.length)));
}