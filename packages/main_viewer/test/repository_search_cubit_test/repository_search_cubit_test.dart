import 'package:bloc_test/bloc_test.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:main_viewer/main_viewer.dart';
import 'package:main_viewer/src/application/repository_search_cubit/repository_search_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'repository_search_cubit_test.mocks.dart';

@GenerateMocks([IRepositorySearch])
void main() {
  late MockIRepositorySearch mockRepositorySearch;
  late RepositorySearchCubit repositorySearchCubit;

  const repositorySample = RepositoryData(
      repositoryName: 'Repo name',
      programmingLanguage: 'javascript',
      description: 'This is repo description',
      stars: 5,
      forks: 2,
      ownerName: 'alek',
      ownerAvatarUrl: 'asd');

  setUp(() {
    mockRepositorySearch = MockIRepositorySearch();
    repositorySearchCubit = RepositorySearchCubit(mockRepositorySearch);
  });

  tearDown(() {
    repositorySearchCubit.close();
  });

  test('initial state is RepositorySearchState.initial()', () {
    expect(repositorySearchCubit.state, RepositorySearchState.initial());
  });

  blocTest<RepositorySearchCubit, RepositorySearchState>(
    'emits notEnoughCharsToSearch true when search phrase is less than 3 chars',
    build: () => repositorySearchCubit,
    act: (cubit) => cubit.searchRepositories('ab'),
    expect: () => [
      RepositorySearchState.initial()
          .copyWith(notEnoughCharsToSearch: true, isLoading: false),
    ],
  );

  blocTest<RepositorySearchCubit, RepositorySearchState>(
    'emits loading state and then success state with data when search phrase is valid',
    build: () {
      when(mockRepositorySearch.fetch(searchPhrase: anyNamed('searchPhrase')))
          .thenAnswer((_) async => const Right([repositorySample]));
      return repositorySearchCubit;
    },
    act: (cubit) => cubit.searchRepositories('flutter'),
    expect: () => [
      RepositorySearchState.initial().copyWith(notEnoughCharsToSearch: false),
      RepositorySearchState.initial()
          .copyWith(isLoading: true, notEnoughCharsToSearch: false),
      RepositorySearchState.initial().copyWith(
        isLoading: false,
        notEnoughCharsToSearch: false,
        dataOrFailure: const Right([repositorySample]),
      ),
    ],
  );

  blocTest<RepositorySearchCubit, RepositorySearchState>(
    'cancels previous search when new search is initiated',
    build: () {
      when(mockRepositorySearch.fetch(searchPhrase: anyNamed('searchPhrase')))
          .thenAnswer((_) async => const Right([repositorySample]));
      return repositorySearchCubit;
    },
    act: (cubit) async {
      cubit.searchRepositories('flutter');
      cubit.searchRepositories('dart');
    },
    expect: () => [
      RepositorySearchState.initial().copyWith(notEnoughCharsToSearch: false),
      RepositorySearchState.initial()
          .copyWith(isLoading: true, notEnoughCharsToSearch: false),
      RepositorySearchState.initial().copyWith(
        isLoading: false,
        notEnoughCharsToSearch: false,
        dataOrFailure: const Right([repositorySample]),
      ),
    ],
  );

  blocTest<RepositorySearchCubit, RepositorySearchState>(
    'emits failure state when search fails',
    build: () {
      when(mockRepositorySearch.fetch(searchPhrase: anyNamed('searchPhrase')))
          .thenAnswer((_) async => const Left(Failure()));
      return repositorySearchCubit;
    },
    act: (cubit) => cubit.searchRepositories('flutter'),
    expect: () => [
      RepositorySearchState.initial().copyWith(notEnoughCharsToSearch: false),
      RepositorySearchState.initial()
          .copyWith(isLoading: true, notEnoughCharsToSearch: false),
      RepositorySearchState.initial().copyWith(
        isLoading: false,
        notEnoughCharsToSearch: false,
        dataOrFailure: const Left(Failure()),
      ),
    ],
  );
}
