# 📱 GitHub Repository Viewer

Welcome to the GitHub Repository Viewer! This mobile application, built with Flutter, leverages the GitHub API to fetch repositories and issues for selected repositories. It serves as a comprehensive example of utilizing cubits with pagination to efficiently load and manage issues. This project highlights Flutter's capabilities and demonstrates best practices in state management and architectural patterns using 4-layers and monorepo approaches.

![App Preview](readme_assets/app_preview.gif)

## 📚 Table of Contents

- [Features and Packages](#-features-and-packages)
- [How to Run](#-how-to-run)
- [Project Structure](#-project-structure)
- [Navigation](#-navigation)
- [Tests](#-tests)
  - [Unit Tests](#unit-tests)
  - [Integration Tests](#integration-tests)
- [Known Bugs](#-known-bugs)

## 🌟 Features and Packages

- 📄 **GitHub Issues Pagination**: Efficiently load and display issues with pagination.
- 🎨 **Cool Animations**: Enhance user experience with animations using:
  - [animate_do](https://pub.dev/packages/animate_do)
  - [animated_loading_border](https://pub.dev/packages/animated_loading_border)
- 🧱 **State Management**:
  - [flutter_bloc](https://pub.dev/packages/flutter_bloc)
  - [bloc](https://pub.dev/packages/bloc)
- ❄️ **Code Generation**:
  - [freezed](https://pub.dev/packages/freezed)
  - [build_runner](https://pub.dev/packages/build_runner)
- 💉 **Dependency Injection**:
  - [injectable](https://pub.dev/packages/injectable)
  - [injectable_generator](https://pub.dev/packages/injectable_generator)
  - [get_it](https://pub.dev/packages/get_it)
- 🚀 **Routing**:
  - [go_router](https://pub.dev/packages/go_router)
- 🧪 **Testing**:
  - [mockito](https://pub.dev/packages/mockito)
  - [bloc_test](https://pub.dev/packages/bloc_test)
  - [patrol](https://pub.dev/packages/patrol)

## 🛠 How to Run

This project employs a monorepo structure managed by Melos, which ensures a clean and modular codebase.

1. **Activate Melos**:
   ```bash
   dart pub global activate melos
   ```

2. **Generate Files**:
   ```bash
   melos generate
   ```

3. **Run the App**:
   ```bash
   flutter run --dart-define=GITHUB_API_TOKEN=your_github_token
   ```

## 🗂 Project Structure

The project is organized as a monorepo, which is essential for maintaining a clear separation of concerns and a clean architecture as the project scales. By using multiple local packages, we establish clear boundaries between independent components of the codebase.

All packages are located inside the packages/ folder:

![Project Structure](readme_assets/project_structure.png)

### Key Packages:

- **common**: Contains shared utilities and should not depend on any other local packages.
- **http_repository** and **go_router_navigator**: rovide specific implementations and are injected using [injectable](https://pub.dev/packages/injectable) and [get_it](https://pub.dev/packages/get_it). These packages should not be depended upon by other packages.

To visualize the project's dependencies, refer to the following dependency graph:

![Dependency Graph](readme_assets/dependency_graph.png)

To ensure package dependency constraints are maintained, utilize this: [packages-verifier](https://github.com/kmrosiek/packages-verifier).

## 🌐 Navigation

This application is designed to be independent of any navigation package. Although `go_router` is used for navigation, the codebase does not directly depend on it due to the navigator abstraction layer. This layer defines interfaces and route contracts fulfilled by the `go_router_navigator` package. Given that `go_router` is injected, thorough testing is necessary to prevent runtime errors.

### go_router_navigator

Implements named routes with type-safe parameters, ensuring robust and maintainable navigation throughout the app.

## 🧪 Tests

### Unit Tests

Unit tests for the blocs are conducted using the `bloc_test` package. To execute all tests, use Melos:

```bash
melos test
```

### Integration Tests

Integration tests are set up with the `patrol` package, currently configured for iOS. To run integration tests on a simulator:

1. **Activate Patrol CLI**:
   ```bash
   dart pub global activate patrol_cli
   ```

2. **Run Tests**:
   ```bash
   patrol test -t integration_test/app_test.dart
   ```

For more information, visit the [Patrol documentation](https://patrol.leancode.co/getting-started).

## 🐞 Known Bugs

- The textfield occasionally becomes unresponsive when returning from the repository details screen.
- Titles that span two lines in the repository search screen may overflow when transitioning back from the repository details screen due to different padding, leading to layout issues.

---

Thank you for exploring the GitHub Repository Viewer! I hope this project demonstrates the effective use of Flutter and its ecosystem. Happy coding! 🚀
