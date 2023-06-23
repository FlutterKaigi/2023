# FlutterKaigi 2023 official website

## Development

We will deliver sessions related to FlutterKaigi in accordance with [Figma](https://www.figma.com/file/3jxi4kkyBLUNw1lHfFGHzs/FlutterKaigi?node-id=1037%3A71&t=2q7KlExZOyoQTG17-0).

### Setup

This project uses [Flutter beta channel](https://github.com/flutter/flutter/wiki/Roadmap#releases).

1. [Install fvm](https://fvm.app/docs/getting_started/installation).
1. Move to project root directory, and run `fvm install` command.
1. Run `fvm flutter pub get` command.
1. Set up IDE to use fvm.
    - If you use [VSCode](https://code.visualstudio.com/), already set up.
    - If you use [Android Studio](https://developer.android.com/studio), please see [fvm document](https://fvm.app/docs/getting_started/configuration#android-studio).
1. Run `fvm dart run husky install` to set up [husky], git hook management tool

### Contributing

We always welcome all contributions! See [CONTRIBUTING.md](./CONTRIBUTING.md) for more information.

For Japanese, please see [CONTRIBUTING.ja.md](./CONTRIBUTING.ja.md).

### Tech Stacks

- [Flutter](https://flutter.dev/)
- [Flutter Web](https://docs.flutter.dev/deployment/web)
- [Github Pages](https://docs.github.com/ja/pages/getting-started-with-github-pages/about-github-pages)
- [Codemagic Static Pages](https://docs.codemagic.io/flutter-publishing/publishing-to-codemagic-static-pages/)

## Thanks

Thank you for contributing!

### Contributors

GitHub: [Contributors](https://github.com/FlutterKaigi/confwebsite2023/graphs/contributors)

[husky]: https://pub.dev/packages/husky