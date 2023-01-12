import 'package:confwebsite2023/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.isShow,
      required this.colors,
      required this.title,
      required this.message,
      required this.url,
      this.onPress});

  final bool isShow;
  final List<MaterialColor>? colors;
  final String title;
  final String message;
  final String url;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    if (!isShow) return const SizedBox.shrink();

    if (colors == null) {
      return Container(
        margin: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(48.0),
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Tooltip(
              message: message,
              child: Link(
                uri: Uri.parse(url),
                target: LinkTarget.blank,
                builder: (BuildContext ctx, FollowLink? openLink) {
                  return ElevatedButton(
                    onPressed: onPress ?? openLink,
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(28),
                      backgroundColor: red,
                      foregroundColor: black,
                    ),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(48.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors as List<MaterialColor>,
            ),
          ),
          child: Tooltip(
            message: message,
            child: Link(
              uri: Uri.parse(url),
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton(
                  onPressed: onPress ?? openLink,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
