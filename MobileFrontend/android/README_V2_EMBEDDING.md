Android v2 embedding is now in use.

Key points:
- MainActivity is a Kotlin class extending io.flutter.embedding.android.FlutterActivity.
- Plugin registration is automatic; no GeneratedPluginRegistrant usage in app code.
- Android Gradle Plugin 8.x, Kotlin 1.9.x, Java 17 toolchain.
- Manifests declare flutterEmbedding meta-data value "2".
- If you add new Flutter plugins, run `flutter pub get`; the plugin loader handles registration.

Troubleshooting:
- Ensure JAVA_HOME is Java 17.
- If build cache issues occur, run `flutter clean` and rebuild.
