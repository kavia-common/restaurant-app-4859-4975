Environment configuration

This app uses flutter_dotenv to read runtime configuration from a .env file at the project root.

How to use:
1) Copy .env.example to .env
2) Fill in required values for your environment
3) Make sure pubspec.yaml includes the .env file under flutter/assets (already configured)
4) Never commit the .env file; it is ignored via .gitignore

Example:
cp .env.example .env
# then edit .env values

Keys:
- API_BASE_URL: Backend REST API base URL.
- INSTAGRAM_BUSINESS_ID, INSTAGRAM_ACCESS_TOKEN: If integrating Instagram Graph API via backend/proxy, provide the credentials your backend expects.
- SITE_URL: Deployment URL for deep links and email redirects.
- WHATSAPP_DEFAULT_MESSAGE: Default WhatsApp greeting message.

Notes:
- Do not hardcode secrets in source code.
- If you add new env variables, document them in .env.example too.
- Ask the user to provide the environment values. The orchestrator will set them in the CI environment.
