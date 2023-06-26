import 'package:confwebsite2023/features/footer/ui/footer_age.dart';
import 'package:confwebsite2023/features/footer/ui/footer_icon_button.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF511486),
            Color(0xFF391940),
          ],
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FooterAge(
                  url: 'https://flutterkaigi.jp/2021/',
                  age: '2021',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '/',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                FooterAge(
                  url: 'https://flutterkaigi.jp/2022/',
                  age: '2022',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FooterIconButton(
                url: 'https://twitter.com/FlutterKaigi',
                image: Assets.icon.twitter,
                padding: EdgeInsets.zero,
              ),
              FooterIconButton(
                url: 'https://github.com/FlutterKaigi',
                image: Assets.icon.github,
                padding: const EdgeInsets.symmetric(horizontal: 40),
              ),
              FooterIconButton(
                url: 'https://discord.com/invite/Nr7H8JTJSF',
                image: Assets.icon.discord,
                padding: const EdgeInsets.only(right: 40),
              ),
              FooterIconButton(
                url: 'https://medium.com/flutterkaigi',
                image: Assets.icon.medium,
                padding: EdgeInsets.zero,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Tooltip(
                  message: 'Code of Conduct',
                  child: Link(
                    uri: Uri.parse(
                      'https://flutterkaigi.github.io/flutterkaigi/Code-of-Conduct.ja.html',
                    ),
                    target: LinkTarget.blank,
                    builder: (context, openLink) {
                      return TextButton(
                        onPressed: openLink,
                        child: const Text(
                          'Code of Conduct',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Tooltip(
                    message: 'Privacy Policy',
                    child: Link(
                      uri: Uri.parse(
                        'https://flutterkaigi.github.io/flutterkaigi/Privacy-Policy.ja.html',
                      ),
                      target: LinkTarget.blank,
                      builder: (context, openLink) {
                        return TextButton(
                          onPressed: openLink,
                          child: const Text(
                            'Privacy Policy',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Tooltip(
                    message: 'Contact',
                    child: Link(
                      uri: Uri.parse(
                        'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3',
                      ),
                      target: LinkTarget.blank,
                      builder: (context, openLink) {
                        return TextButton(
                          onPressed: openLink,
                          child: const Text(
                            'Contact',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Tooltip(
                  message: 'License',
                  child: TextButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LicensePage(),
                        ),
                      );
                    },
                    child: const Text(
                      'License',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              '© 2021-2023 FlutterKaigi 実行委員会',
              style: TextStyle(
                color: Color(0xFFCCC2DC),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 25,
              right: 156,
              left: 156,
            ),
            child: Column(
              children: [
                Text(
                  'Flutter and the related logo are trademarks of Google LLC.FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFCCC2DC),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The "Flutter" name and the Flutter logo',
                      style: TextStyle(
                        color: Color(0xFFCCC2DC),
                      ),
                    ),
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcATop,
                      ),
                      child: FlutterLogo(size: 24),
                    ),
                    Text(
                      'are trademarks owned by Google.',
                      style: TextStyle(
                        color: Color(0xFFCCC2DC),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
