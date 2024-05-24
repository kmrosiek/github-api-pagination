import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:main_viewer/src/domain/models/repository_data/repository_data.dart';

abstract class IRepositorySearch {
  Future<Either<Failure, List<RepositoryData>>> fetch(
      {required String searchPhrase});
}
