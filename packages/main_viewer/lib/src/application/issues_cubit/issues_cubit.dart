import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/src/domain/models/issue_data/issue_data.dart';

part 'issues_state.dart';
part 'issues_cubit.freezed.dart';

@injectable
class IssuesCubit extends Cubit<IssuesState> {
  IssuesCubit() : super(IssuesState.initial());

  int counter = 1;
  Future<void> fetch() async {
    if (!state.canFetchMore) {
      log('Cannot fetch more because loading: ${state.isLoading} or cannot fetch: ${state.canFetchMore}');
      return;
    }
    emit(state.copyWith(isLoading: true, maybeFailure: const None()));
  }
}
