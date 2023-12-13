import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

part 'youtube_provider.g.dart';

@riverpod
YoutubePlayerController youtubePlayerController(
  YoutubePlayerControllerRef ref,
  String videoId,
) {
  final controller = YoutubePlayerController.fromVideoId(
    videoId: videoId,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );
  return controller;
}
