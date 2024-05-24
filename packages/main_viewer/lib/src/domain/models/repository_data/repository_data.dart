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
RepositoryData repositoryExample(int index) => RepositoryData(
    repositoryName: 'Repo name $index',
    programmingLanguage: 'javascript',
    description: 'This is repo description $index',
    stars: 5 + index,
    forks: 2 + index,
    ownerName: 'alek $index',
    ownerAvatarUrl: 'asd');
