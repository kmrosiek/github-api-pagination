import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:main_viewer/main_viewer.dart';
import 'package:main_viewer/src/application/issues_cubit/issues_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'issues_cubit_test.mocks.dart';

@GenerateMocks([IIssuesRepository])
void main() {
  late MockIIssuesRepository mockIssuesRepository;
  late IssuesCubit issuesCubit;

  final IssueData issueDataSample = IssueData(
      title: 'Issue title',
      userAvatarUrl: 'https://avatars.githubusercontent.com/u/840911?v=4',
      userLogin: 'rocky',
      labels: [const IssueLabel(text: 'main', color: Color(0xFFFFFFFF))],
      createdAt: DateTime(2022, 2, 2));

  setUp(() {
    mockIssuesRepository = MockIIssuesRepository();
    issuesCubit = IssuesCubit(mockIssuesRepository, 'owner', 'repo');
  });

  tearDown(() {
    issuesCubit.close();
  });

  blocTest<IssuesCubit, IssuesState>(
    'emits loading state and then failure state when fetch fails',
    build: () {
      const expectedAnswer = (Left<Failure, List<IssueData>>(Failure()), false);
      when(mockIssuesRepository.fetch(
        ownerLogin: anyNamed('ownerLogin'),
        repositoryName: anyNamed('repositoryName'),
      )).thenAnswer((_) async => expectedAnswer);
      return issuesCubit;
    },
    act: (cubit) => cubit.fetch(),
    expect: () => [
      IssuesState.initial()
          .copyWith(isLoading: true, maybeFailure: const None()),
      IssuesState.initial().copyWith(
        isLoading: false,
        maybeFailure: const Some(Failure()),
      ),
    ],
  );

  blocTest<IssuesCubit, IssuesState>(
    'emits loading state and then success state with data when fetch succeeds',
    build: () {
      final issues = [issueDataSample];
      final expectedAnswer = (Right<Failure, List<IssueData>>(issues), true);
      when(mockIssuesRepository.fetch(
        ownerLogin: anyNamed('ownerLogin'),
        repositoryName: anyNamed('repositoryName'),
      )).thenAnswer((_) async => expectedAnswer);
      return issuesCubit;
    },
    act: (cubit) => cubit.fetch(),
    expect: () => [
      IssuesState.initial()
          .copyWith(isLoading: true, maybeFailure: const None()),
      IssuesState.initial().copyWith(
        issues: [issueDataSample],
        hasMoreIssuesToFetch: true,
        isLoading: false,
      ),
    ],
  );

  blocTest<IssuesCubit, IssuesState>(
    'does not fetch when cannot fetch more',
    build: () {
      issuesCubit.emit(IssuesState.initial().copyWith(isLoading: true));
      return issuesCubit;
    },
    act: (cubit) => cubit.fetch(),
    verify: (_) {
      verifyNever(mockIssuesRepository.fetch(
        ownerLogin: anyNamed('ownerLogin'),
        repositoryName: anyNamed('repositoryName'),
      ));
    },
  );
}
