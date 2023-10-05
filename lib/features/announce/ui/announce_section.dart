import 'package:confwebsite2023/core/components/list_bullet.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/announce/ui/announce_section_header.dart';
import 'package:flutter/material.dart';

/// アナウンスセクション
final class AnnounceSection extends StatelessWidget {
  const AnnounceSection({super.key});

  @override
  Widget build(BuildContext context) => const ResponsiveWidget(
        largeWidget: _AnnounceSectionContent(
          verticalGap: Spaces.vertical_40,
        ),
        smallWidget: _AnnounceSectionContent(
          verticalGap: Spaces.vertical_24,
        ),
      );
}

/// アナウンスセクションのコンテンツ
final class _AnnounceSectionContent extends StatelessWidget {
  const _AnnounceSectionContent({required this.verticalGap});

  final SizedBox verticalGap;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const AnnounceSectionHeader(),
          verticalGap,
          const _AnnounceList(),
        ],
      );
}

/// アナウンスのアイテム一覧
final class _AnnounceList extends StatelessWidget {
  const _AnnounceList();

  static const _verticalGap = Spaces.vertical_16;

  @override
  Widget build(BuildContext context) => const Column(
        children: [
          _AnnounceItem('会場は禁煙です。喫煙所はありません。'),
          _verticalGap,
          _AnnounceItem('クローク／ロッカーなどの用意はございません。手荷物は各自の責任により管理してください。'),
          _verticalGap,
          _AnnounceItem('会場内で発生したゴミのお持ち帰りにご協力ください。会場内ではゴミの分別にご協力ください。'),
          _verticalGap,
          _AnnounceItem('駐車場の用意はございません。公共交通機関（電車・バスなど）をご利用ください。'),
          _verticalGap,
          _AnnounceItem('会場内におけるトラブル、事故やケガ、盗難、紛失等につきましては、会場は一切の責任を負いかねます。'),
          _verticalGap,
          _AnnounceItem(
            'イベントの模様は撮影される場合がございます。その場合、お客様が写り込む場合もございますので、予めご了承ください。',
          ),
        ],
      );
}

/// アナウンスのアイテム
final class _AnnounceItem extends StatelessWidget {
  const _AnnounceItem(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListBullet(),
          ),
          Spaces.horizontal_16,
          // text
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: baselineColorScheme.ref.secondary.secondary100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
