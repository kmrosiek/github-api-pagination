part of 'repository_search_cubit.dart';

@freezed
sealed class RepositorySearchState with _$RepositorySearchState {
  const factory RepositorySearchState({
    required bool isLoading,
    required Option<Either<Failure, List<RepositoryData>>> failureDataOrNothing,
  }) = _RepositorySearchState;

  factory RepositorySearchState.initial() => const RepositorySearchState(
      isLoading: false, failureDataOrNothing: None());
}
