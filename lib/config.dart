// `String.fromEnvironment` の乱用を防ぐために、このファイルのみ警告を無効にして
// プロジェクト全体では無効にしていない
// ignore_for_file: do_not_use_environment

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config.g.dart';

@riverpod
Config config(ConfigRef ref) {
  throw UnimplementedError();
}

class Config {
  factory Config() {
    final flavor = Flavor.values.byName(
      const String.fromEnvironment('FLAVOR'),
    );
    return Config._(
      flavor: flavor,
    );
  }

  const Config._({
    required Flavor flavor,
  }) : _flavor = flavor;

  final Flavor _flavor;

  String get appTitle {
    const title = 'FlutterKaigi 2023';
    // 本番環境以外で動作していることが分かるように、アプリタイトルの先頭に Flavor 名を追加する
    return switch (_flavor) {
      Flavor.production => title,
      _ => '(${_flavor.name}) $title',
    };
  }
}

enum Flavor {
  mock,
  production,
}
