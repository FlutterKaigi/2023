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

    return session.when(
      data: (session) {
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
            bodyVerticalMargin: 16,
            sectionHeaderTextStyle: AppTextStyle.spHeading1,
            sessionTitleTextStyle: textTheme.displaySmall!,
          ),
        );
      },
      error: (error, __) {
        return Center(child: Text('エラーが発生しました: $error'));
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
