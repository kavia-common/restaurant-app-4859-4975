Lint fixes applied

- Package name in pubspec.yaml changed to mobile_frontend to satisfy the Flutter lint rule requiring lower_case_with_underscores.
- Dependencies in pubspec.yaml sorted alphabetically as per sort_pub_dependencies.

Notes:
- If the application identifier (Android applicationId / iOS bundle identifier) needs to match a specific naming, configure that in platform-specific files. The pubspec package name change does not alter those IDs.
