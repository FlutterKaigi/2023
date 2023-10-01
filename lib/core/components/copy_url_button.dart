import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

final class CopyUrlButton extends StatelessWidget {
  const CopyUrlButton({super.key});

  @override
  Widget build(BuildContext context) => FilledButton.icon(
        onPressed: () async {
          final data = ClipboardData(text: Uri.base.toString());
          await Clipboard.setData(data);

          if (!context.mounted) {
            return;
          }
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('URLをコピーしました'),
            ),
          );
        },
        icon: SvgPicture.asset(
          Assets.icons.copy,
          width: 18,
          height: 18,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.onPrimary,
            BlendMode.srcIn,
          ),
        ),
        label: const Text('URLをコピー'),
      );
}
