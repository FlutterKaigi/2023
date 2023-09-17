import 'package:confwebsite2023/core/components/fortee_button.dart';
import 'package:confwebsite2023/core/components/session_track.dart';
import 'package:confwebsite2023/core/gen/assets.gen.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';

class ProposalDeskTop extends StatelessWidget {
  const ProposalDeskTop({
    required this.title,
    required this.userName,
    required this.image,
    required this.time,
    required this.contents,
    required this.sessionName,
    required this.trackName,
    required this.twitter,
    required this.isSponsor,
    this.sponsorImage,
    this.sponsorName,
    super.key,
  });

  final String title;
  final String userName;
  final String image;
  final String time;
  final String contents;
  final String sessionName;
  final String trackName;
  final String twitter;

  /// スポンサー用
  final bool isSponsor;
  final String? sponsorImage;
  final String? sponsorName;

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
              time,
              style: textTheme.headlineSmall!.copyWith(
                fontSize: 18,
                height: 1.33,
              ),
            ),
            Spaces.vertical_16,
            ForteeButton(
              onTap: () {
                //TODO ForteeのURLを追記する
              },
            ),
            Spaces.vertical_40,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_40,
            Column(
              children: [
                if (isSponsor)
                  //TODO 画像を表示できるか確認する
                  //TODO 画像のサイズを調整する
                  SvgPicture.asset(sponsorImage!)
                else
                  const SizedBox(),
                if (isSponsor)
                  //TODO 位置を真ん中にする
                  Text(
                    sponsorName!,
                    style: textTheme.bodyLarge,
                  )
                else
                  const SizedBox(),
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
              ],
            ),
            Spaces.vertical_16,
            Row(
              children: [
                SvgPicture.asset(
                  Assets.icons.twitter,
                  width: 24,
                  height: 24,
                ),
                Spaces.horizontal_4,
                Link(
                  uri: Uri.tryParse('https://twitter.com/$twitter'),
                  target: LinkTarget.blank,
                  builder: (context, openLink) {
                    return TextButton(
                      onPressed: openLink,
                      child: Text(
                        twitter,
                        style: textTheme.titleMedium,
                      ),
                    );
                  },
                ),
              ],
            ),
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
    required this.contents,
    required this.sessionName,
    required this.trackName,
    required this.twitter,
    required this.isSponsor,
    this.sponsorImage,
    this.sponsorName,
    super.key,
  });

  final String title;
  final String userName;
  final String image;
  final String time;
  final String contents;
  final String sessionName;
  final String trackName;
  final String twitter;

  /// スポンサー用
  final bool isSponsor;
  final String? sponsorImage;
  final String? sponsorName;

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
            Spaces.vertical_24,
            Text(
              title,
              style: textTheme.titleLarge!.copyWith(
                fontSize: 36,
                height: 1.15,
              ),
            ),
            Spaces.vertical_16,
            Text(
              time,
              style: textTheme.headlineSmall!.copyWith(
                fontSize: 24,
                height: 1.33,
              ),
            ),
            Spaces.vertical_16,
            ForteeButton(
              onTap: () {
                //TODO ForteeのURLを追記する
              },
            ),
            Spaces.vertical_24,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_24,
            if (isSponsor)
              //TODO 画像を表示できるか確認する
              //TODO 画像のサイズを調整する
              SvgPicture.asset(sponsorImage!)
            else
              const SizedBox(),
            if (isSponsor)
              //TODO Spaceをつける
              Text(sponsorName!, style: textTheme.bodyLarge)
            else
              const SizedBox(),
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
            Spaces.vertical_16,
            Row(
              children: [
                SvgPicture.asset(
                  Assets.icons.twitter,
                  width: 24,
                  height: 24,
                ),
                Spaces.horizontal_4,
                Link(
                  uri: Uri.tryParse('https://twitter.com/$twitter'),
                  target: LinkTarget.blank,
                  builder: (context, openLink) {
                    return TextButton(
                      onPressed: openLink,
                      child: Text(
                        twitter,
                        style: textTheme.titleMedium,
                      ),
                    );
                  },
                ),
              ],
            ),
            Spaces.vertical_24,
            Divider(color: baselineColorScheme.ref.primary.primary50),
            Spaces.vertical_24,
            Text(
              contents,
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
