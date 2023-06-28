import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

// class FooterAge extends StatelessWidget {
//   const FooterAge({
//     required this.url,
//     required this.age,
//     super.key,
//   });
//
//   final String url;
//   final String age;
//
//   @override
//   Widget build(BuildContext context) {
//     return Tooltip(
//       message: url,
//       child: Link(
//         uri: Uri.parse(url),
//         target: LinkTarget.blank,
//         builder: (context, openLink) {
//           return TextButton(
//             onPressed: openLink,
//             child: Text(
//               age,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//                 fontFamily: 'Roboto',
//                 fontWeight: FontWeight.w400,
//                 letterSpacing: 0.50,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

class FooterAge extends StatelessWidget {
  const FooterAge({super.key});

  @override
  Widget build(BuildContext context) {
    final otherYearsLinkTextStyle = Theme.of(context).textTheme.bodyLarge;
    final otherYearsLinkSlashTextStyle = Theme.of(context).textTheme.labelLarge;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Tooltip(
            message: 'https://flutterkaigi.jp/2021/',
            child: Link(
              uri: Uri.parse('https://flutterkaigi.jp/2021/'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    '2021',
                    style: otherYearsLinkTextStyle,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '/',
              style: otherYearsLinkSlashTextStyle,
            ),
          ),
          Tooltip(
            message: 'https://flutterkaigi.jp/2022/',
            child: Link(
              uri: Uri.parse('https://flutterkaigi.jp/2022/'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: Text(
                    '2022',
                    style: otherYearsLinkTextStyle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
