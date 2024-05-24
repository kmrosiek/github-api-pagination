import 'dart:convert';
import 'dart:developer';
import 'package:common/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:main_viewer/main_viewer.dart';

@LazySingleton(as: IIssuesRepository)
class IssuesRepository implements IIssuesRepository {
  static const String urlBase = 'api.github.com';
  static const int paginationPageSize = 10;

  static const String _githubToken = String.fromEnvironment('GITHUB_API_TOKEN');

  @override
  Future<FailureOrDataAndHasMoreToFetch> fetch(
      {required String ownerLogin,
      required String repositoryName,
      required int paginationPage}) async {
    log('Fetching issues for owner: $ownerLogin and repo name: $repositoryName page no $paginationPage.');
    try {
      final url =
          Uri.https(urlBase, 'repos/$ownerLogin/$repositoryName/issues', {
        'page': paginationPage.toString(),
        'per_page': paginationPageSize.toString(),
      });
      final response = await http.get(url, headers: {
        'Authorization': 'token $_githubToken',
        'Accept': 'application/vnd.github.v3+json',
      });
      if (response.statusCode != 200) {
        return (const Left<Failure, List<IssueData>>(Failure()), false);
      }

      final List<dynamic> fetchedIssues = json.decode(response.body);
      final hasMoreToFetch = fetchedIssues.length >= paginationPageSize;
      final List<IssueData> issues =
          fetchedIssues.map((item) => IssueData.fromJson(item)).toList();
      return (Right<Failure, List<IssueData>>(issues), hasMoreToFetch);
    } catch (e) {
      return (const Left<Failure, List<IssueData>>(Failure()), false);
    }
  }
}
