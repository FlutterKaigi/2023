// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/painting.dart';

class GradientConstant {
  GradientConstant._();

  static const accent = _Accent();
  static const sponsor = _Sponsor();
}

class _Accent {
  const _Accent();

  Gradient get primary => const LinearGradient(
        colors: [
          Color.fromARGB(255, 255, 87, 221),
          Color.fromARGB(255, 86, 194, 255),
        ],
      );

  Gradient get secoundary => const LinearGradient(
        colors: [
          Color.fromARGB(255, 243, 239, 147),
          Color.fromARGB(255, 241, 122, 55),
        ],
      );
}

class _Sponsor {
  const _Sponsor();

  Gradient get diamond => const LinearGradient(
        colors: [
          Color.fromARGB(255, 155, 202, 240),
          Color.fromARGB(255, 225, 253, 255),
          Color.fromARGB(255, 155, 202, 240),
        ],
      );

  Gradient get platinum => const LinearGradient(
        colors: [
          Color.fromARGB(255, 225, 236, 255),
          Color.fromARGB(255, 138, 177, 231),
        ],
      );

  Gradient get gold => const LinearGradient(
        colors: [
          Color.fromARGB(255, 235, 236, 199),
          Color.fromARGB(255, 225, 150, 81),
        ],
      );

  Gradient get silver => const LinearGradient(
        colors: [
          Color.fromARGB(255, 211, 211, 212),
          Color.fromARGB(255, 158, 176, 178),
        ],
      );
}
