import 'package:confwebsite2023/core/components/fortee_button.dart';
import 'package:confwebsite2023/core/components/session_track.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

class ProposalDeskTop extends StatelessWidget {
  const ProposalDeskTop({
    required this.title,
    required this.userName,
    required this.image,
    required this.contents,
    required this.sessionName,
    required this.trackName,
    super.key,
  });

  final String title;
  final String userName;
  final String image;
  final String contents;
  final String sessionName;
  final String trackName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Container(
      width: 1128,
      color: theme.scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SessionTrack(
                  title: trackName,
                  isMobile: true,
                ),
                Spaces.horizontal_16,
                Text(
                  sessionName,
                  style: textTheme.bodyLarge!.copyWith(
                    fontSize: 18,
                    height: 1.33,
                  ),
                ),
              ],
            ),
            Spaces.vertical_40,
            Text(
              title,
              style: textTheme.titleLarge!.copyWith(
                fontSize: 33.75,
                height: 1.15,
              ),
            ),
            Spaces.vertical_16,
            Text(
              '2023年11月10日：11:10~11:15(40分)',
              style: textTheme.headlineSmall!.copyWith(
                fontSize: 18,
                height: 1.33,
              ),
            ),
            Spaces.vertical_16,
            ForteeButton(onTap: () {}),
            Spaces.vertical_40,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_40,
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(image),
                ),
                Spaces.horizontal_8,
                Text(
                  userName,
                  style: textTheme.titleMedium!.copyWith(
                    fontSize: 16.5,
                    height: 1.27,
                  ),
                ),
              ],
            ),

            //TODO アカウントを並べる。

            Spaces.vertical_40,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_40,
            Text(
              contents,
              style: textTheme.bodyLarge!.copyWith(
                fontSize: 12,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProposalMobile extends StatelessWidget {
  const ProposalMobile({
    required this.title,
    required this.userName,
    required this.image,
    required this.time,
    required this.sessionName,
    required this.trackName,
    super.key,
  });

  final String title;
  final String userName;
  final String image;
  final String time;
  final String sessionName;
  final String trackName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Container(
      width: 1128,
      color: theme.scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SessionTrack(
                  title: trackName,
                  isMobile: true,
                ),
                Spaces.horizontal_16,
                Text(
                  sessionName,
                  style: textTheme.bodyLarge!.copyWith(
                    fontSize: 24,
                    height: 1.33,
                  ),
                ),
              ],
            ),
            Spaces.vertical_40,
            Text(
              title,
              style: textTheme.titleLarge!.copyWith(
                fontSize: 36,
                height: 1.15,
              ),
            ),
            Spaces.vertical_16,
            Text(
              '2023年11月10日：11:10~11:15(40分)',
              style: textTheme.headlineSmall!.copyWith(
                fontSize: 24,
                height: 1.33,
              ),
            ),
            Spaces.vertical_16,
            ForteeButton(onTap: () {}),
            Spaces.vertical_24,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_24,
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(image),
                ),
                Spaces.horizontal_8,
                Text(
                  userName,
                  style: textTheme.titleMedium!.copyWith(
                    fontSize: 22,
                    height: 1.27,
                  ),
                ),
              ],
            ),

            //TODO アカウントを並べる。

            Spaces.vertical_24,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_24,
            Text(
              time,
              style: textTheme.bodyLarge!.copyWith(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
