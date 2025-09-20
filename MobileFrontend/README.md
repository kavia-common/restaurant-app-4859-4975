# MobileFrontend - Restaurant App

This Flutter app provides a cross-platform (iOS/Android) restaurant experience: menu browsing, item customization, cart, checkout, order tracking, reviews, Instagram feed, contact via call/WhatsApp, directions, offline menu, localization, and more.

Quick start:
1) Flutter 3.29+ / Dart 3.7+
2) `cp .env.example .env` and fill values
3) `flutter pub get`
4) `flutter run`

Highlights:
- Offline menu caching via SharedPreferences (extensible to sqflite)
- Localization (English, Sinhala placeholder)
- Device integrations: call, WhatsApp, maps (url_launcher)
- Extensible providers and services
- Accessible, Material 3 UI

Security & Privacy:
- No secrets in source; use .env
- Integrate real push, auth, and payment in backend-facing services
