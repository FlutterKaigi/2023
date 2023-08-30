# FlutterKaigi 2023 official website

## Development

We will deliver sessions related to FlutterKaigi in accordance with [Figma].

### Setup

This project uses [Flutter beta channel]. The reasons:
- Use the latest Flutter/Dart features.
- Use a more stable version than master channel.

1. [Install fvm].
1. Move to project root directory, and run `fvm install` command.
1. Run `fvm flutter pub get` command.
1. Set up IDE to use fvm.
    - If you use [VSCode], already set up.
    - If you use [Android Studio], please see [fvm document].

### Run app

A Run Configuration is set up to run this app.

Please check:
- `.vscode/launch.json` for VS Code.
- `.run/~.run.xml` for IntelliJ IDEA or Android Studio.

### Contributing

We always welcome all contributions! See [CONTRIBUTING.md] for more information.

For Japanese, please see [CONTRIBUTING.ja.md].

### Branch Rules

We would be happy if you could create a branch with the following rules

| branch prefix | label |
| -- | -- |
| `feature/*` | `feature` |
| `fix/*`, `bugfix/*` | `bug` |
| `improvement/*`, `improve/*`, `migrate/*` | `improve` |

### Tech Stacks

- [Flutter]
- [Flutter Web]
- [GitHub Pages]
- [Codemagic Static Pages]

### Directory Structure

```text
./lib
├── app
├── core
│   ├── components
│   ├── gen
│   ├── l10n
│   └── theme
└── features
    ├── ...
    │   ├── data
    │   └── ui
    └── ...
        ├── data
        └── ui
```

### Architecture

```mermaid
flowchart TB
  app
  core
  features
  main[main.dart]
  
  main --> app
  app --> core & features
  features --> core
```

## Thanks

Thank you for contributing!

### Contributors

GitHub: [Contributors]

<!-- Links -->

[Figma]: https://www.figma.com/file/LsVB4KlIMXD4Z1FfB8KyuU/FlutterKaigi-Web-2023

[Flutter beta channel]: https://github.com/flutter/flutter/wiki/Roadmap#releases

[Install fvm]: https://fvm.app/docs/getting_started/installation

[VSCode]: https://code.visualstudio.com/

[Android Studio]: https://developer.android.com/studio

[fvm document]: https://fvm.app/docs/getting_started/configuration#android-studio

[CONTRIBUTING.md]: ./CONTRIBUTING.md

[CONTRIBUTING.ja.md]: ./CONTRIBUTING.ja.md

[Flutter]: https://flutter.dev/

[Flutter Web]: https://docs.flutter.dev/deployment/web

[GitHub Pages]: https://docs.github.com/ja/pages/getting-started-with-github-pages/about-github-pages

[Codemagic Static Pages]: https://docs.codemagic.io/flutter-publishing/publishing-to-codemagic-static-pages/

[Contributors]: https://github.com/FlutterKaigi/2023/graphs/contributors
