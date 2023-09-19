import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme/app_text_style.dart';
import 'package:confwebsite2023/core/theme/dimension.dart';
import 'package:confwebsite2023/core/theme/gradient.dart';
import 'package:confwebsite2023/features/ticket/ui/ticket_category_details.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TicketSection extends StatelessWidget {
  const TicketSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final bodyLargeTextTheme = textTheme.bodyLarge!;
    final colorScheme = theme.colorScheme;

    final button = FilledButton.icon(
      icon: const Icon(Icons.arrow_back_ios),
      label: const Text('チケット詳細'),
      onPressed: () async => launchUrlString(
        'https://flutterkaigi.jp/2023/tickets',
        mode: LaunchMode.externalApplication,
      ),
    );
    final introduction = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FlutterKaigi 2023は 初のハイブリッド開催となります!',
          style: bodyLargeTextTheme.copyWith(
            color: colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'オフライン会場 または オンライン視聴からお選びください!',
          style: bodyLargeTextTheme.copyWith(
            color: colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _TicketHeader(),
        Spaces.vertical_20,
        introduction,
        Spaces.vertical_20,
        ResponsiveWidget(
          largeWidget: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TicketCategoryDetails.offline(),
                ),
                Spaces.horizontal_40,
                const VerticalDivider(),
                Spaces.horizontal_40,
                Expanded(
                  child: TicketCategoryDetails.online(),
                ),
              ],
            ),
          ),
          smallWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TicketCategoryDetails.offline(),
              const Divider(),
              TicketCategoryDetails.online(),
            ],
          ),
        ),
        Spaces.vertical_20,
        button,
      ],
    );
  }
}

class _TicketHeader extends StatelessWidget {
  const _TicketHeader();

  @override
  Widget build(BuildContext context) {
    const text = 'Join FlutterKaigi 2023!';
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
