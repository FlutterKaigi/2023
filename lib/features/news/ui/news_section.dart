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
        children: data.map((e) => _NewsItem(news: e)).toList(),
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
            color: theme.colorScheme.secondary.withOpacity(0.9),
          ),
        ),
        // 紫丸ポチ
        const SizedBox(width: 16),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(0.4),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 16),
        // text
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              news.text,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
        ),
      ],
    );

    // urlがある場合
    if (news.url != null) {
      return Link(
        uri: Uri.tryParse(news.url!),
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
