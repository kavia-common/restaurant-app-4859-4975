# Fix: "[!] Your app is using an unsupported Gradle project"

This guide resolves the Flutter build failure by regenerating a clean Flutter app and migrating your existing code, assets, and pubspec changes.

Why this is needed
- The Android project includes mixed/duplicated configs (Groovy and Kotlin build files, duplicate package paths), causing Flutter to report an unsupported Gradle project.
- Official recommendation: create a new Flutter project, then move Dart code, assets, and pubspec.yaml edits.

Prerequisites
- Flutter SDK installed and on PATH.
- Android SDK/Xcode as per flutter doctor.
- Run all commands from the container workspace folder: /home/kavia/workspace/code-generation/restaurant-app-4859-4975

Steps

1) Backup existing MobileFrontend
   mv MobileFrontend MobileFrontend_OLD

2) Create a new Flutter app named MobileFrontend
   flutter create -t app MobileFrontend

   Notes:
   - This generates a clean, supported Gradle project for Android (and fresh iOS, macOS, web, windows, linux scaffolding).
   - Do NOT overwrite the new android/ios files with old ones. We will only migrate Dart code, tests, assets, and pubspec edits.

3) Migrate Dart code and tests
   - If you had only main.dart and the default test:
     cp MobileFrontend_OLD/lib/main.dart MobileFrontend/lib/main.dart
     cp -r MobileFrontend_OLD/test/* MobileFrontend/test/ 2>/dev/null || true

   Verify imports follow full package names and match Effective Dart.

4) Migrate assets and static files
   - Copy your app assets:
     [If you had any assets]
     rsync -av --ignore-existing MobileFrontend_OLD/assets/ MobileFrontend/assets/

   - Web specific files (keep the new scaffold versions; only migrate customizations):
     - If you had custom web icons/manifest/index changes, merge them carefully:
       diff -u MobileFrontend/web/index.html MobileFrontend_OLD/web/index.html
       diff -u MobileFrontend/web/manifest.json MobileFrontend_OLD/web/manifest.json
       # Apply only the necessary customizations to the new files.

5) Merge pubspec.yaml edits
   - Open both files:
     code MobileFrontend/pubspec.yaml
     code MobileFrontend_OLD/pubspec.yaml

   - Carefully merge:
     - name: MobileFrontend should remain (as generated).
     - version constraints compatible with your Flutter version.
     - dependencies and dev_dependencies from OLD that you actually use in code.
     - flutter.assets: include assets/ entries used by your app.
     - flutter uses material design: keep as needed.

   - Do NOT copy old android/ios build configs; only merge Dart-level and Flutter-level settings.

6) Fetch packages and verify
   cd MobileFrontend
   flutter pub get

7) Platform files: keep the newly generated android/ and ios/ projects
   - Do not copy MobileFrontend_OLD/android or ios back.
   - The new Gradle settings and iOS project are supported by Flutter tooling.

8) Run and test builds
   - Android:
     flutter build apk
     # or run on a device/emulator:
     flutter run

   - iOS (macOS host required):
     flutter build ios --no-codesign

9) Remove the old folder once confirmed
   cd ..
   rm -rf MobileFrontend_OLD

Troubleshooting
- If you see plugin or package errors, ensure:
  - All used dependencies are added to pubspec.yaml before usage.
  - Run flutter pub get again.
- If lint rules fail:
  - Check MobileFrontend/analysis_options.yaml and address lints accordingly.

Post-migration checklist
- [ ] App builds successfully on Android (flutter build apk)
- [ ] App runs on a device/emulator (flutter run)
- [ ] Assets load correctly
- [ ] Tests pass (flutter test)
- [ ] No references to old Android/Gradle files remain
