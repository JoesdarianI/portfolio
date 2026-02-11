# Portfolio (Flutter)

Simple, clean portfolio built with Flutter and ready for GitHub Pages.

## Run locally

```bash
flutter pub get
flutter run -d chrome
```

## Customize content

Edit placeholder portfolio data in:

- `lib/main.dart`

Replace:

- `YOUR NAME`
- `Flutter Developer`
- About text
- Skills list
- Project cards
- Contact links

## Deploy to GitHub Pages

This repo includes a workflow at `.github/workflows/deploy.yml`.

1. Push this project to a GitHub repository.
2. In GitHub: `Settings` -> `Pages` -> set `Build and deployment` source to `GitHub Actions`.
3. Ensure your default branch is `main` (or update workflow trigger branch).
4. Push to `main` to trigger deploy.

Your site URL will be:

- `https://<your-username>.github.io/<repo-name>/`

## Manual web build (optional)

```bash
flutter build web --release --base-href /<repo-name>/
```

If you publish as a user/org site named `<your-username>.github.io`, use:

```bash
flutter build web --release --base-href /
```
