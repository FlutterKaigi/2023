import 'package:confwebsite2023/core/components/list_bullet.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/announcement/ui/announcement_section_header.dart';
import 'package:flutter/material.dart';

/// アナウンスセクション
final class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) => const ResponsiveWidget(
        largeWidget: _AnnouncementSectionContent(
          verticalGap: Spaces.vertical_40,
        ),
        smallWidget: _AnnouncementSectionContent(
          verticalGap: Spaces.vertical_24,
        ),
      );
}

/// アナウンスセクションのコンテンツ
final class _AnnouncementSectionContent extends StatelessWidget {
  const _AnnouncementSectionContent({required this.verticalGap});

  final SizedBox verticalGap;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const AnnouncementSectionHeader(),
          verticalGap,
          const _AnnouncementList(),
        ],
      );
}

/// アナウンスのアイテム一覧
final class _AnnouncementList extends StatelessWidget {
  const _AnnouncementList();

  static const _verticalGap = Spaces.vertical_16;

  @override
  Widget build(BuildContext context) => const Column(
        children: [
          _AnnouncementItem('会場は禁煙です。喫煙所はありません。'),
          _verticalGap,
          _AnnouncementItem('クローク／ロッカーなどの用意はございません。手荷物は各自の責任により管理してください。'),
          _verticalGap,
          _AnnouncementItem('会場内で発生したゴミのお持ち帰りにご協力ください。会場内ではゴミの分別にご協力ください。'),
          _verticalGap,
          _AnnouncementItem('駐車場の用意はございません。公共交通機関（電車・バスなど）をご利用ください。'),
          _verticalGap,
          _AnnouncementItem('会場内におけるトラブル、事故やケガ、盗難、紛失等につきましては、会場は一切の責任を負いかねます。'),
          _verticalGap,
          _AnnouncementItem(
            'イベントの模様は撮影される場合がございます。その場合、お客様が写り込む場合もございますので、予めご了承ください。',
          ),
          _verticalGap,
          _AnnouncementItem(
            '''来場者向けの Wi-Fi の提供はございません。登壇者、スポンサー（出し物に関連した利用のみ）にのみ提供いたしますので、予めご了承ください。''',
          ),
          _verticalGap,
          _AnnouncementItem(
            '''昼食の提供はございません。会場周辺のお店をご利用ください。また、公式アプリにて会場周辺のお店を紹介しておりますので、ぜひご活用ください。''',
          ),
          _verticalGap,
          _AnnouncementItem(
            '''来場者向けの充電スペースは設けません。充電が必要な方はモバイルバッテリーなどをご持参ください。''',
          ),
        ],
      );
}

/// アナウンスのアイテム
final class _AnnouncementItem extends StatelessWidget {
  const _AnnouncementItem(this.text);

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
