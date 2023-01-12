import 'package:confwebsite2023/data/link.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:confwebsite2023/responsive_layout_builder.dart';
import 'package:confwebsite2023/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/link.dart';

class Footer extends StatelessWidget {
  const Footer({super.key, required this.layout});

  final ResponsiveLayout layout;

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final footerLinks = <Map<String, String>>[
      {
        'name': appLocalizations.association,
        'url': 'https://flutterkaigi.jp/association-site',
      },
      {
        'name': appLocalizations.privacyPolicy,
        'url':
            'https://flutterkaigi.github.io/flutterkaigi/Privacy-Policy.ja.html',
      },
      {
        'name': appLocalizations.codeOfConduct,
        'url':
            'https://flutterkaigi.github.io/flutterkaigi/Code-of-Conduct.ja.html',
      },
      {
        'name': appLocalizations.contactUs,
        'url':
            'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3V7z2TOw/viewform',
      },
    ];

    final footerItem = [
      for (final item in footerLinks)
        _FooterButton(
          message: item['name']!,
          text: item['name'],
          anchorLink: item['url']!,
        ),
      _FooterButton(
        message: appLocalizations.licenses,
        text: appLocalizations.licenses,
        onPressed: () => showLicensePage(context: context),
      ),
    ];

    final socialItem = kSocialLinks.map((dynamic link) {
      return Row(
        children: [
          _FooterButton(
            message: link['url'],
            icon: '${link['name']}_white',
            anchorLink: link['url']!,
          ),
          const Gap(4),
        ],
      );
    }).toList();

    final pastItem = kPastKaigis.map((dynamic link) {
      return _FooterButton(
        message: link['url'],
        text: link['name'],
        anchorLink: link['url']!,
      );
    }).toList();

    return SizedBox(
      child: Column(
        children: [
          const CustomDivider(
            thickness: 4,
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                grey,
                red,
                sky,
              ],
              stops: [
                0.0,
                0.5,
                1.0,
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            color: const Color.fromRGBO(4, 43, 89, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Gap(16),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    Assets.flutterkaigiNavbarDarkLogo,
                    // height: kToolbarHeight,
                    width: 240,
                  ),
                ),
                const Gap(16),
                Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: pastItem,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(8),
                Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: footerItem,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(8),
                Align(
                  alignment: Alignment.center,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: socialItem,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(16),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    appLocalizations.copyright,
                    style: const TextStyle(
                      color: white,
                    ),
                  ),
                ),
                const Gap(8),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    appLocalizations.disclaimer,
                    style: const TextStyle(
                      color: white,
                    ),
                  ),
                ),
                const Gap(4),
                Align(
                  alignment: Alignment.center,
                  child: StyledText(
                    text: appLocalizations.trademark,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: white,
                    ),
                    tags: {
                      'FlutterLogo': StyledTextWidgetTag(
                        const FlutterLogo(),
                      ),
                    },
                  ),
                ),
                const Gap(32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterButton extends StatelessWidget {
  const _FooterButton({
    Key? key,
    required this.message,
    this.text,
    this.icon,
    this.anchorLink,
    this.onPressed,
  }) : super(key: key);

  final String message;
  final String? text;
  final String? icon;
  final String? anchorLink;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      if (text == null) {
        return Tooltip(
          message: message,
          child: Link(
            uri: Uri.parse(anchorLink!),
            target: LinkTarget.blank,
            builder: (BuildContext ctx, FollowLink? openLink) {
              return SvgPicture.asset(
                '/$icon.svg',
                width: 24,
              );
            },
          ),
        );
      }
      return Tooltip(
          message: message,
          child: Row(children: [
            Link(
              uri: Uri.parse(anchorLink!),
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton.icon(
                  onPressed: openLink,
                  icon: SvgPicture.asset(
                    '/$icon.svg',
                    width: 24,
                  ),
                  label: Text(
                    text!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: white,
                    ),
                  ),
                );
              },
            ),
          ]));
    }
    if (anchorLink != null) {
      return Tooltip(
          message: message,
          child: Row(children: [
            Link(
              uri: Uri.parse(anchorLink!),
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    text!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: white,
                    ),
                  ),
                );
              },
            ),
          ]));
    }
    return Tooltip(
        message: message,
        child: Row(children: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: white,
              ),
            ),
          ),
        ]));
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.height = 16,
    this.thickness = 1,
    this.indent = 0,
    this.endIndent = 0,
    required this.gradient,
  });

  final double height;
  final double thickness;
  final double indent;
  final double endIndent;
  final LinearGradient gradient;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height,
        ),
        Container(
          height: thickness,
          margin: EdgeInsetsDirectional.only(
            start: indent,
            end: endIndent,
          ),
          decoration: BoxDecoration(
            gradient: gradient,
          ),
        ),
      ],
    );
  }
}
