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
        '今年のハンズオンは10月26日をもって終了しました。多くの皆様にご参加いただき誠にありがとうございました。FlutterKaigi本編にもご参加される方には先着15名の限定ノベルティを用意しております。ノベルティの配布は、受付とは別に会場内に設置した専用のコーナーで行いますのでご注意ください。';
    return WantedWidget(
      title: 'Have a blast!',
      ticketButtonTitle: 'イベント詳細ページ',
      content: text,
      ticketOnPressed: () async => launchUrlString(
        'https://flutterkaigi.connpass.com/event/293847/',
        mode: LaunchMode.externalApplication,
      ),
      archiveButtonTitle: 'アーカイブはこちら',
      archiveOnPressed: () async => launchUrlString(
        'https://www.youtube.com/watch?v=Kj-3UcIZc4Y',
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
