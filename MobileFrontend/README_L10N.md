# Localization Guide

This app ships with a lightweight localization helper (no ARB) to reduce dependencies in templates.
- Supported locales: English (en), Sinhala (si), Tamil (ta)
- Strings are defined in `lib/src/core/localization/app_localizations.dart`

To add a new language:
1. Add a new Locale to `AppLocalizations.supportedLocales`.
2. Add string translations to `_localizedValues`.
3. Consider migrating to Flutter's gen-l10n with ARB for production apps.
