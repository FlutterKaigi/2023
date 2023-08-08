import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'count_down_timer.g.dart';

@riverpod
DateTime now(NowRef ref) {
  final timer = Timer(const Duration(seconds: 1), () {
    ref.invalidateSelf();
  });
  ref.onDispose(timer.cancel);
  return DateTime.now();
}
