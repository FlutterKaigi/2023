import 'package:confwebsite2023/core/components/profile_image.dart';
import 'package:confwebsite2023/core/components/wanted.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/features/event/hands-on/data/hands_on_staffs_provider.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HandsOnEvent extends StatelessWidget {
  const HandsOnEvent({super.key});

  @override
  Widget build(BuildContext context) {
    const text =
        // ignore: lines_longer_than_80_chars
        '今年のハンズオンでは、三目並べの制作を通してriverpodを学べることを目指します。また、そのチャレンジ企画として Firebase を利用したリアルタイム対戦機能も計画しています。現在、スタッフ一丸となってその準備に励んでおりますので、開催当日まで暫しお待ちいただければと思います。\n'
        'なお、開催日は昨年と違い本編とは別日の10/26に開催予定ですので、こちらも合わせてご留意ください。';
    return WantedWidget(
      title: 'Join the hands-on event!',
      buttonTitle: 'イベント詳細',
      content: text,
      onPressed: () async => launchUrlString(
        'https://flutterkaigi.connpass.com/event/293847/',
        mode: LaunchMode.externalApplication,
      ),
      image: Assets.illustrationConference,
      child: const _HandsOnStaffsIcon(),
    );
  }
}

class _HandsOnStaffsIcon extends ConsumerWidget {
  const _HandsOnStaffsIcon();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staffs = ref.watch(handsOnStaffProvider);

    return switch ((staffs.valueOrNull, staffs.error)) {
      (final List<Staff> data, _) => Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 24,
          children: data
              .map(
                (e) => ProfileImage(
                  imageUrl: e.image.src,
                  size: 120,
                ),
              )
              .toList(),
        ),
      (_, final Object error) => Text('例外が発生しました: $error'),
      (_, _) => const CircularProgressIndicator(),
    };
  }
}
