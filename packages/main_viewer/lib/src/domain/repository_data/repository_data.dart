import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_data.freezed.dart';

@freezed
abstract class RepositoryData with _$RepositoryData {
  const factory RepositoryData({
    required String repositoryName,
    required String programmingLanguage,
    required int stars,
    required int forks,
    required String ownerName,
    required String ownerAvatarUrl,
  }) = _RepositoryData;
}

const repositoryExample = RepositoryData(
    repositoryName: 'Repo name',
    programmingLanguage: 'javascript',
    stars: 5,
    forks: 2,
    ownerName: 'alek',
    ownerAvatarUrl: 'asd');
