part of 'repository_search_cubit.dart';

@freezed
abstract class RepositorySearchState with _$RepositorySearchState {
  const RepositorySearchState._();
  const factory RepositorySearchState({
    required bool isLoading,
    required bool notEnoughCharsToSearch,
    required Either<Failure, List<RepositoryData>> dataOrFailure,
  }) = _RepositorySearchState;

  factory RepositorySearchState.initial() => const RepositorySearchState(
      isLoading: false, dataOrFailure: Right([]), notEnoughCharsToSearch: true);

  Option<int> get noOfFoundReposOrNothing => notEnoughCharsToSearch || isLoading
      ? const None()
      : dataOrFailure.fold(
          (failure) => const None(), (data) => Some(data.length));
}
