Environment configuration

This app uses flutter_dotenv to read runtime configuration from a .env file at the project root.

How to use:
1) Copy .env.example to .env
2) Fill in required values for your environment
3) Make sure pubspec.yaml includes the .env file under flutter/assets (already configured)
4) Never commit the .env file; it is ignored via .gitignore

Quick start example:
cp .env.example .env
# then edit .env values

Required variables:
- API_BASE_URL
  Description: Backend REST API base URL the app communicates with.
  Sample: https://api.example.com (or http://10.0.2.2:8080 for Android emulator)

- INSTAGRAM_BUSINESS_ID
  Description: Instagram Business ID used by your backend/proxy to fetch business media via Instagram Graph API.
  Sample: 17841400000000000

- INSTAGRAM_ACCESS_TOKEN
  Description: Access token used by your backend/proxy for Instagram Graph API access.
  Sample: IGQVJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

- SITE_URL
  Description: Public site URL for deep links and email redirect targets.
  Sample: https://restaurant.example.com

- WHATSAPP_DEFAULT_MESSAGE
  Description: Default greeting text prefilled when opening WhatsApp chat from the app.
  Sample: Hello! I would like to make an inquiry about your menu.

Optional variables:
- ANALYTICS_WRITE_KEY
  Description: Client-side analytics key (e.g., Segment write key). Leave unset/empty to disable analytics forwarding.
  Sample: SEGMENT_WRITE_KEY_XXXX

- PUSH_SENDER_ID
  Description: Push sender ID for Android (e.g., FCM sender ID / project number). iOS setup is done in platform-specific files.
  Sample: 123456789012

- MAPS_URL_TEMPLATE
  Description: Override for the maps link template. Use {lat} and {lng} placeholders.
  Sample: https://www.google.com/maps/search/?api=1&query={lat},{lng}

Notes:
- Do not hardcode secrets in source code.
- If you add new env variables, document them here and add to .env.example as well.
- Environment values are provided by the user; the orchestrator/CI will set them in the runtime environment.
- For production, prefer storing secrets in a secure secrets manager and inject them at build/runtime.
