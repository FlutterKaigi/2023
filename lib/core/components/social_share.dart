import 'package:confwebsite2023/core/components/copy_url_button.dart';
import 'package:confwebsite2023/core/components/tweet_button.dart';
import 'package:flutter/material.dart';

final class SocialShare extends StatelessWidget {
  const SocialShare({
    required this.shareUrl,
    this.alignment = WrapAlignment.end,
    super.key,
  });

  final WrapAlignment alignment;
  final String shareUrl;

  @override
  Widget build(BuildContext context) => Wrap(
        alignment: alignment,
        spacing: 10,
        runSpacing: 10,
        children: [
          TweetButton(
            shareUrl: shareUrl,
          ),
          CopyUrlButton(
            shareUrl: shareUrl,
          ),
        ],
      );
}
