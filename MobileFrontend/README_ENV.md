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

Notes:
- Do not hardcode secrets in source code.
- If you add new env variables, document them in .env.example too.
