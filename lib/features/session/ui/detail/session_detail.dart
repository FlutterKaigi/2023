import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:confwebsite2023/features/session/data/session_provider.dart';
import 'package:confwebsite2023/features/session/ui/detail/session_detail_content.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionDetail extends ConsumerWidget {
  const SessionDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    if (session is! TalkSession) {
      throw AssertionError('Session is not TalkSession');
    }

    final sessionSponsor = ref.watch(sessionSponsorProvider(session));

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return ResponsiveWidget(
      largeWidget: SessionDetailContent(
        session: session,
        sponsor: sessionSponsor,
        cardPadding: 40,
        contentGap: 40,
        sectionGap: 80,
        youtubeGap: MediaQuery.of(context).size.width / 1.5,
        bodyVerticalMargin: 20,
        sectionHeaderTextStyle: AppTextStyle.pcHeading1,
        sessionTitleTextStyle: textTheme.displayMedium!,
      ),
      smallWidget: SessionDetailContent(
        session: session,
        sponsor: sessionSponsor,
        cardPadding: 24,
        contentGap: 16,
        sectionGap: 80,
        youtubeGap: double.infinity,
        bodyVerticalMargin: 16,
        sectionHeaderTextStyle: AppTextStyle.spHeading1,
        sessionTitleTextStyle: textTheme.displaySmall!,
      ),
    );
  }
}
