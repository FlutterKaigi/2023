import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/news/data/news.dart';
import 'package:confwebsite2023/features/news/data/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/link.dart';

class NewsSection extends ConsumerWidget {
  const NewsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(currentNewsProvider);
    return state.when(
      data: (data) => Column(
        children: [
          for (final e in data) _NewsItem(news: e),
          if (data.isNotEmpty) Spaces.vertical_82,
        ],
      ),
      error: (error, _) => Text('エラーが発生しました: $error'),
      loading: CircularProgressIndicator.adaptive,
    );
  }
}

class _NewsItem extends StatelessWidget {
  const _NewsItem({required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final child = Row(
      children: [
        // 日付
        Text(
          DateFormat('yyyy/MM/dd').format(news.startedAt),
          style: theme.textTheme.bodyLarge!.copyWith(
            color: baselineColorScheme.ref.primary.primary90,
          ),
        ),
        // 紫丸ポチ
        Spaces.horizontal_16,
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: baselineColorScheme.ref.primary.primary40,
            shape: BoxShape.circle,
          ),
        ),
        Spaces.horizontal_16,
        // text
        Expanded(
          child: Text(
            news.text,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: baselineColorScheme.ref.secondary.secondary100,
            ),
          ),
        ),
      ],
    );

    // urlがある場合
    if (news.url != null) {
      return Link(
        uri: Uri.tryParse(news.url!),
        target: LinkTarget.blank,
        builder: (_, followLink) => TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
          ),
          onPressed: followLink,
          child: child,
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8),
        child: child,
      );
    }
  }
}
