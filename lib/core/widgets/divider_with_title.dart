import 'package:flutter/material.dart';

class DividerWithTitle extends StatelessWidget {
  const DividerWithTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final dividerLine = Expanded(
        child: Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: const Divider(height: 20, thickness: 5),
    ));

    return Row(children: [
      dividerLine,
      Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      dividerLine
    ]);
  }
}
