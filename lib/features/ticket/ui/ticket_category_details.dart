import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme/app_text_style.dart';
import 'package:confwebsite2023/core/theme/dimension.dart';
import 'package:confwebsite2023/core/theme/gradient.dart';
import 'package:flutter/material.dart';

class TicketCategoryDetails extends StatelessWidget {
  const TicketCategoryDetails({
    required this.title,
    required this.description,
    super.key,
  });

  factory TicketCategoryDetails.offline() => const TicketCategoryDetails(
        title: 'OFFLINE',
        description: '2023/9/20(水) 18:00よりチケットを販売します。\n'
            'オフライン参加チケットはPassMarketより3,000円で販売します。',
      );

  factory TicketCategoryDetails.online() => const TicketCategoryDetails(
        title: 'ONLINE',
        description: '開催当日に無料のライブ配信を行う予定です。\n'
            'オンライン視聴チケットはPassMarketより配布します。\n'
            '配信方式について開催までに変更する可能性があります。',
      );

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final titleWidget = _TicketCategoryTitle(text: title);
    final descriptionWidget = Text(
      description,
      style: textTheme.bodyLarge!.copyWith(
        color: colorScheme.onPrimaryContainer,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleWidget,
        Spaces.horizontal_20,
        descriptionWidget,
      ],
    );
  }
}

class _TicketCategoryTitle extends StatelessWidget {
  const _TicketCategoryTitle({
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    final gradient = GradientConstant.accent.secoundary;
    return ResponsiveWidget(
      largeWidget: SectionHeader.leftAlignment(
        text: text,
        gradient: gradient,
        style: AppTextStyle.pcHeading2,
      ),
      smallWidget: SectionHeader.leftAlignment(
        text: text,
        gradient: gradient,
        style: AppTextStyle.spHeading2,
      ),
    );
  }
}
