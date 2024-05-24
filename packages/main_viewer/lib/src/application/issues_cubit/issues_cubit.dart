import 'package:bloc/bloc.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main_viewer/src/domain/issue_data/issue_data.dart';

part 'issues_state.dart';
part 'issues_cubit.freezed.dart';

class IssuesCubit extends Cubit<IssuesState> {
  IssuesCubit() : super(IssuesState.initial());

  Future<void> fetch(String searchPhrase) async {
    emit(state.copyWith(isLoading: true));
  }
}
