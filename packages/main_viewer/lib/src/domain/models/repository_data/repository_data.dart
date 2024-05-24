import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_data.freezed.dart';

@freezed
abstract class RepositoryData with _$RepositoryData {
  const factory RepositoryData({
    required String repositoryName,
    required String programmingLanguage,
    required String description,
    required int stars,
    required int forks,
    required String ownerName,
    required String ownerAvatarUrl,
  }) = _RepositoryData;

  factory RepositoryData.fromJson(Map<String, dynamic> json) {
    return RepositoryData(
      repositoryName: json['name'],
      description: json['description'] ?? '',
      stars: json['stargazers_count'],
      forks: json['forks_count'],
      programmingLanguage: json['language'] ?? '',
      ownerName: json['owner']['login'],
      ownerAvatarUrl: json['owner']['avatar_url'],
    );
  }
}
