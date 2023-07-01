import 'package:confwebsite2023/features/staff/data/staff.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SnsIcon extends StatelessWidget {
  const SnsIcon({
    required this.snsType,
    this.size = 40,
    this.onPressed,
    super.key,
  });

  final SnsType snsType;
  final double size;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        snsType.assetName,
        width: size,
        height: size,
      ),
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
      };
}
