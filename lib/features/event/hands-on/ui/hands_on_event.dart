import 'package:confwebsite2023/core/components/left_filled_icon_button.dart';
import 'package:confwebsite2023/core/components/profile_image.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/components/wanted.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/event/hands-on/data/hands_on_staffs_provider.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HandsOnEvent extends StatelessWidget {
  const HandsOnEvent({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final bodyLargeTextStyle = textTheme.bodyLarge!;

    const header = _HandsOnHeader();
    const text =
        '今年のハンズオンでは、三目並べの制作を通してriverpodを学べることを目指します。また、そのチャレンジ企画として Firebase を利用したリアルタイム対戦機能も計画しています。現在、スタッフ一丸となってその準備に励んでおりますので、開催当日まで暫しお待ちいただければと思います。\n'
        'なお、開催日は昨年と違い本編とは別日の10/26に開催予定ですので、こちらも合わせてご留意ください。';
    final eventDetailsButton = LeftFilledIconButton(
      onPressed: () async => launchUrlString(
        'https://flutterkaigi.connpass.com/event/293847/',
        mode: LaunchMode.externalApplication,
      ),
      buttonTitle: 'イベント詳細',
      icon: Icons.arrow_forward_ios,
    );
    return ResponsiveWidget(
      largeWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          Spaces.vertical_40,
          text,
          Spaces.vertical_20,
          Spaces.vertical_20,
          const _HandsOnStaffsIcon(),
          Spaces.vertical_40,
          eventDetailsButton,
        ],
      ),
      smallWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          Spaces.vertical_40,
          text,
          Spaces.vertical_40,
          const _HandsOnStaffsIcon(),
          Spaces.vertical_40,
          eventDetailsButton,
        ],
      ),
    );
  }
}

class _HandsOnHeader extends StatelessWidget {
  const _HandsOnHeader();

  @override
  Widget build(BuildContext context) {
    const text = 'Join the hands-on event!';
    final gradient = GradientConstant.accent.primary;
    return ResponsiveWidget(
      largeWidget: SectionHeader.leftAlignment(
        text: text,
        gradient: gradient,
        style: AppTextStyle.pcHeading1,
      ),
      smallWidget: SectionHeader.leftAlignment(
        text: text,
        gradient: gradient,
        style: AppTextStyle.spHeading1,
      ),
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
