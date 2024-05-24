library main_viewer;

export 'src/presentation/repository_search_screen/repository_search_screen.dart'
    show RepositorySearchScreen;
export 'src/presentation/repository_details_screen/repository_details_screen.dart'
    show RepositoryDetailsScreen;
export 'src/domain/interfaces/i_issues_repository.dart'
    show IIssuesRepository, FailureOrDataAndHasMoreToFetch;
export 'src/domain/interfaces/i_repository_search.dart' show IRepositorySearch;
export 'src/domain/models/repository_data/repository_data.dart';
export 'src/domain/models/issue_data/issue_data.dart' show IssueData;
export 'src/injection.dart' show configureMainViewerInjectable;
