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
}

//TODO remove
const repositoryExample = RepositoryData(
    repositoryName: 'Repo name',
    programmingLanguage: 'javascript',
    description: 'This is repo description',
    stars: 5,
    forks: 2,
    ownerName: 'alek',
    ownerAvatarUrl: 'asd');
