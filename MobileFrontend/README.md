# MobileFrontend - Restaurant App

This Flutter app provides a cross-platform (iOS/Android) mobile experience for a restaurant:
- Restaurant profile and contact (click-to-call, WhatsApp, GPS directions, location sharing - demo stubs)
- Categorized menu with high-res imagery placeholders, detailed item info, allergens, nutrition, and spice levels
- Online ordering with customizations, cart, checkout, and simulated order tracking
- Payment selection (wallets, cards, cash-on-delivery - stubs)
- Order history, reviews with ratings/comments/photo path support, featured testimonials (UI placeholder)
- Loyalty/promo scaffolding (extend in future)
- Social login/Instagram feed stubs
- Multi-language (English, Sinhala, Tamil), offline menu via SQLite, accessibility considerations

## Structure

- lib/main.dart - App entry, env load, providers, theme, routing
- lib/src/core - Theme, localization, router, providers bootstrap
- lib/src/data/local - SQLite wrapper and schema (menu, orders, reviews)
- lib/src/features
  - splash - initial data load and navigation
  - home - navigation grid and contact bar
  - menu - categories, items, details, add-to-cart
  - order - cart, checkout, tracking, order history
  - reviews - aggregate rating and reviews CRUD
  - profile - restaurant info, operating hours, contact, settings

## Env
See README_ENV.md. Copy .env.example to .env and set values. The app runs without them for demo purposes.

## Notes
- Device integrations (phone, WhatsApp, maps, share, payments, push notifications, social login) are scaffolded using in-app stubs to avoid extra dependencies in this step. Replace with url_launcher, firebase_messaging, and vendor SDKs as needed.
- Offline browsing is supported via pre-seeded SQLite data and can be synced with a backend in the future.

## Testing
Default widget tests will pass (title and placeholder generation screen).
