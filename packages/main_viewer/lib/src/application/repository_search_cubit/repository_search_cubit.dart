import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';

part 'repository_search_state.dart';
part 'repository_search_cubit.freezed.dart';

@injectable
class RepositorySearchCubit extends Cubit<RepositorySearchState> {
  RepositorySearchCubit(this._repositorySearch)
      : super(RepositorySearchState.initial());
  final IRepositorySearch _repositorySearch;
  CancelableOperation? _searchOperation;

  static const _minCharsRequiredForSearch = 3;

  Future<void> searchRepositories(String searchPhrase) async {
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
    _searchOperation = CancelableOperation.fromFuture(
            _repositorySearch.fetch(searchPhrase: searchPhrase))
        .then((number) {
      _searchOperation = null;
      emit(state.copyWith(
          isLoading: false,
          dataFailureOrNothing: const Some(Right([repositoryExample]))));
    });
  }
}
