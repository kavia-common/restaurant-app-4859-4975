MobileFrontend migration to supported Gradle project

Context
The Flutter tool reported: "[!] Your app is using an unsupported Gradle project." This requires regenerating the app with flutter create and migrating Dart code/assets/pubspec edits.

Action (to perform once on the workspace host)
1) cd /home/kavia/workspace/code-generation/restaurant-app-4859-4975
2) mv MobileFrontend MobileFrontend_OLD
3) flutter create -t app MobileFrontend
4) Copy over Dart code, tests, and assets:
   cp MobileFrontend_OLD/lib/main.dart MobileFrontend/lib/main.dart
   mkdir -p MobileFrontend/test
   cp -r MobileFrontend_OLD/test/* MobileFrontend/test/ 2>/dev/null || true
   rsync -av --ignore-existing MobileFrontend_OLD/assets/ MobileFrontend/assets/ 2>/dev/null || true
5) Merge pubspec.yaml changes from MobileFrontend_OLD/pubspec.yaml into MobileFrontend/pubspec.yaml (dependencies, assets, etc.)
6) cd MobileFrontend && flutter pub get
7) Build and validate:
   flutter build apk
   flutter test
8) If all good, remove old:
   cd ..
   rm -rf MobileFrontend_OLD

Notes
- Do NOT copy the old android/ or ios/ directories. Keep the freshly generated ones from flutter create.
- If there were any web customizations, manually merge only the required changes into the new web/ files.
- See MobileFrontend/REPAIR_UNSUPPORTED_GRADLE.md for a detailed guide.
