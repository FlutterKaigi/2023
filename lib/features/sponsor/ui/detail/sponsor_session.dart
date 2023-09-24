import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_session.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

final class SponsorSessionSection extends StatelessWidget {
  const SponsorSessionSection({
    required this.session,
    super.key,
  });

  final SponsorSession session;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        SectionHeader.leftAlignment(
          text: 'Sponsor Session',
          style: AppTextStyle.pcHeading2,
          gradient: GradientConstant.accent.secoundary,
        ),
        Link(
          uri: Uri.parse(session.url),
          target: LinkTarget.blank,
          builder: (_, followLink) => InkWell(
            onTap: followLink,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      session.title,
                      style: textTheme.headlineLarge,
                    ),
                    Spaces.vertical_16,
                    Text(
                      session.scheduledAt,
                      style: textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
