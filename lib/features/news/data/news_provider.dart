import 'package:confwebsite2023/features/news/data/news.dart';
import 'package:confwebsite2023/features/news/data/news_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<News>> news(NewsRef ref) =>
    ref.watch(newsDataSourceProvider).fetchNewsItems();

/// `startedAt`が現在時刻よりも未来 かつ `endedAt`が現在時刻よりも過去のNewsのみを返す
@riverpod
Future<List<News>> currentNews(CurrentNewsRef ref) async {
  final news = await ref.watch(newsProvider.future);
  final now = DateTime.now();
  return news
      .where(
        (e) =>
            e.startedAt.toLocal().isBefore(now) &&
            (e.endedAt?.toLocal().isAfter(now) ?? true),
      )
      .toList()
    ..sort(
      (a, b) => b.startedAt.compareTo(a.startedAt),
    );
}
