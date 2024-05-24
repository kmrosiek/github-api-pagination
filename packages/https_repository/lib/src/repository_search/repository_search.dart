import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:main_viewer/main_viewer.dart';

@LazySingleton(as: IRepositorySearch)
class RepositorySearch implements IRepositorySearch {
  @override
  Future<Either<Failure, List<RepositoryData>>> fetch(
      {required String searchPhrase}) async {
    await Future.delayed(const Duration(milliseconds: 1500), () => 1);
    return Right(
        List.generate(searchPhrase.length, (i) => repositoryExample(i)));
    //return const Left(Failure());
  }
}
