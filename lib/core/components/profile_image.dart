import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    required this.imageUrl,
    required this.size,
    super.key,
  });
  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: FittedBox(
        child: ClipOval(
          child: FadeInImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
            placeholder: MemoryImage(kTransparentImage),
            imageErrorBuilder: (_, __, ___) => const FittedBox(
              child: Icon(
                Icons.error,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
