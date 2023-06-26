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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tooltip(
            message: 'https://flutterkaigi.jp/2021/',
            child: Link(
              uri: Uri.parse('https://flutterkaigi.jp/2021/'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return TextButton(
                  onPressed: openLink,
                  child: const Text(
                    '2021',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.50,
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '/',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.50,
              ),
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
                  child: const Text(
                    '2022',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.50,
                    ),
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
