import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        _ => SvgPicture.asset(
            snsType.assetName,
            width: size,
            height: size,
            colorFilter: iconColor != null
                ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                : null,
          ),
      },
    );
  }
}

extension _SnsIconAssetName on SnsType {
  String get assetName => switch (this) {
        SnsType.twitter => Assets.icons.twitter,
        SnsType.discord => Assets.icons.discord,
        SnsType.github => Assets.icons.github,
        SnsType.note => Assets.icons.note,
        SnsType.zenn => Assets.icons.zenn,
        SnsType.medium => Assets.icons.medium,
        SnsType.qiita => Assets.icons.qiita,
        SnsType.url => throw UnimplementedError(),
      };
}
