import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';

part 'issues_state.dart';
part 'issues_cubit.freezed.dart';

@injectable
class IssuesCubit extends Cubit<IssuesState> {
  IssuesCubit(this._issuesRepository, @factoryParam this.ownerLogin,
      @factoryParam this.repositoryName)
      : super(IssuesState.initial());
  final IIssuesRepository _issuesRepository;
  final String ownerLogin;
  final String repositoryName;

  Future<void> fetch() async {
    if (!state.canFetchMore) {
      log('Cannot fetch more because loading: ${state.isLoading} or cannot fetch: ${state.canFetchMore}');
      return;
    }
    emit(state.copyWith(isLoading: true, maybeFailure: const None()));
    final (failureOrData, hasMoreToFetch) = await _issuesRepository.fetch(
        ownerLogin: ownerLogin,
        repositoryName: repositoryName,
        paginationPage: state.paginationPage);

    if (isClosed) return;
    failureOrData.fold(
        (failure) =>
            emit(state.copyWith(maybeFailure: Some(failure), isLoading: false)),
        (data) {
      final List<IssueData> updatedIssues = List.from(state.issues);
      updatedIssues.addAll(data);
      emit(state.copyWith(
          issues: updatedIssues,
          paginationPage: state.paginationPage + 1,
          hasMoreIssuesToFetch: hasMoreToFetch,
          isLoading: false));
    });
  }
}
