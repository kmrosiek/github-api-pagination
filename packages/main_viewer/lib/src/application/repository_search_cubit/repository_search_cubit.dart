import 'package:async/async.dart';
import 'package:bloc/bloc.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/src/domain/interfaces/i_repository_search.dart';
import 'package:main_viewer/src/domain/models/repository_data/repository_data.dart';

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
        .then((failureOrData) {
      emit(state.copyWith(dataOrFailure: failureOrData, isLoading: false));
      _searchOperation = null;
    });
  }

  @override
  Future<void> close() {
    _searchOperation?.cancel();
    return super.close();
  }
}
