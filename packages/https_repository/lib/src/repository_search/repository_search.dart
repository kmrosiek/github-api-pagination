import 'dart:convert';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:main_viewer/main_viewer.dart';

@LazySingleton(as: IRepositorySearch)
class RepositorySearch implements IRepositorySearch {
  static const String urlBase = 'https://api.github.com';
  static const String searchRepositories = '/search/repositories';

  @override
  Future<Either<Failure, List<RepositoryData>>> fetch(
      {required String searchPhrase}) async {
    final response = await http
        .get(Uri.parse('$urlBase$searchRepositories?q=$searchPhrase'));
    if (response.statusCode == 200) {
      final List<dynamic> items = json.decode(response.body)['items'];
      return Right(items.map((item) => RepositoryData.fromJson(item)).toList());
    } else {
      return const Left(Failure(message: 'Failed to load repositories'));
    }
  }
}
