import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_viewer/main.dart';
import 'package:main_viewer/main_viewer_test_exports.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'App opens up, search for "flutter", and RepositoryCard widgets appear',
    ($) async {
      configureApp();
      // Launch the app
      await $.pumpWidgetAndSettle(const MyApp());

      // Verify no RepositoryCard widgets are present
      expect(find.byType(RepositoryCard), findsNothing);

      // Find the textfield by key and enter text 'flutter'
      await $.tester
          .enterText(find.byType(RepositorySearchTextField), 'flutter');

      // Wait for 3 seconds
      await Future.delayed(const Duration(seconds: 3));

      // Pump and settle to ensure the UI updates
      await $.tester.pumpAndSettle();

      // Verify RepositoryCard widgets appear
      expect(find.byType(RepositoryCard), findsWidgets);

      // Tap on the first RepositoryCard
      await $.tester.tap(find.byType(RepositoryCard).first);

      // Wait for navigation to RepositoryDetailsScreen
      await $.pumpAndSettle();

      // Verify navigation to RepositoryDetailsScreen
      expect(find.byType(RepositoryDetailsScreen), findsOneWidget);

      // Verify more than one IssueCard widgets
      expect(find.byType(IssueCard), findsWidgets);

      // Pop back
      await $.tester.tap(find.byIcon(Icons.arrow_back));
      await $.pumpAndSettle();
    },
  );
}
