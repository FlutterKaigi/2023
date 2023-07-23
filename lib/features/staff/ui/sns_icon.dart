import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:flutter/material.dart';

class SnsIcon extends StatelessWidget {
  const SnsIcon({
    required this.snsType,
    this.padding,
    this.size = 40,
    this.iconColor,
    this.onPressed,
    super.key,
  });

  final SnsType snsType;
  final EdgeInsetsGeometry? padding;
  final double size;
  final Color? iconColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: padding,
      onPressed: onPressed,
      icon: switch (snsType) {
        SnsType.url => Icon(
            Icons.link,
            size: size,
            color: iconColor,
          ),
        _ => () {
            final child = Image(
              image: snsType.image,
              width: size,
              height: size,
            );
            return switch (iconColor) {
              final Color color => ColorFiltered(
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                  child: child,
                ),
              _ => child,
            };
          }(),
      },
    );
  }
}

extension _SnsIconAssetName on SnsType {
  ImageProvider get image => switch (this) {
        SnsType.twitter => Assets.icons.twitter.provider(),
        SnsType.discord => Assets.icons.discord.provider(),
        SnsType.github => Assets.icons.github.provider(),
        SnsType.note => Assets.icons.note.provider(),
        SnsType.zenn => Assets.icons.zenn.provider(),
        SnsType.medium => Assets.icons.medium.provider(),
        SnsType.qiita => Assets.icons.qiita.provider(),
        SnsType.url => throw UnimplementedError(),
      };
}
