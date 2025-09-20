Flutter Android/iOS project structure regeneration (Kotlin DSL + v2 embedding)

Performed:
- Ran: flutter create -t app . (in MobileFrontend)
- Preserved: lib/, test/, assets/, pubspec.yaml, analysis_options.yaml, README files
- Removed legacy Gradle (Groovy) files and v1 embedding artifacts:
  * android/build.gradle
  * android/settings.gradle
  * android/app/build.gradle
  * android/app/src/main/AndroidManifest.xml (replaced by v2-compatible one)
  * android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java (do not commit)

Next steps to build:
1) flutter clean
2) flutter pub get
3) flutter analyze
4) flutter build apk

If you still see "unsupported Gradle project" or "v1 embedding" errors, verify there are no Groovy build.gradle/settings.gradle files and no v1 embedding sources committed. Ensure only build.gradle.kts/settings.gradle.kts are present.
