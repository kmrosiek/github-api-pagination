import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main_viewer/src/domain/repository_data/repository_data.dart';

part 'repository_search_state.dart';
part 'repository_search_cubit.freezed.dart';

class RepositorySearchCubit extends Cubit<RepositorySearchState> {
  RepositorySearchCubit() : super(RepositorySearchState.initial());
  CancelableOperation? _searchOperation;

  static const _minCharsRequiredForSearch = 3;

  void searchRepositories(String searchPhrase) async {
    if (_searchOperation != null) {
      _searchOperation?.cancel();
    }
    if (searchPhrase.length >= _minCharsRequiredForSearch) {
      emit(state.copyWith(notEnoughCharsToSearch: false));
    } else {
      emit(state.copyWith(notEnoughCharsToSearch: true, isLoading: false));
      return;
    }

    emit(state.copyWith(isLoading: true));
    _searchOperation =
        CancelableOperation.fromFuture(_getNumber(searchPhrase)).then((number) {
      _searchOperation = null;
      emit(state.copyWith(
          isLoading: false,
          dataFailureOrNothing: const Some(Right([repositoryExample]))));
    });
  }

  Future<int> _getNumber(String phrase) {
    return Future.delayed(const Duration(seconds: 1), () => 1);
  }
}
