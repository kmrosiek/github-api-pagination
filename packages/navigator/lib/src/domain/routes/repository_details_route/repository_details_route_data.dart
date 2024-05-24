class RepositoryDetailsRouteData {
  final String repositoryName;
  final String programmingLanguage;
  final String description;
  final int stars;
  final int forks;
  final String ownerName;
  final String ownerAvatarUrl;
  final int cardIndex;

  RepositoryDetailsRouteData({
    required this.repositoryName,
    required this.programmingLanguage,
    required this.description,
    required this.stars,
    required this.forks,
    required this.ownerName,
    required this.ownerAvatarUrl,
    required this.cardIndex,
  });
}
