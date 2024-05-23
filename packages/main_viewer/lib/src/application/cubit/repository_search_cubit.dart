import 'package:bloc/bloc.dart';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:main_viewer/src/domain/repository_data/repository_data.dart';

part 'repository_search_state.dart';
part 'repository_search_cubit.freezed.dart';

class RepositorySearchCubit extends Cubit<RepositorySearchState> {
  RepositorySearchCubit() : super(RepositorySearchState.initial());
}
