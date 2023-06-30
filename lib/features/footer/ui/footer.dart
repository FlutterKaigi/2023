import 'package:confwebsite2023/features/footer/ui/footer_copyright.dart';
import 'package:confwebsite2023/features/footer/ui/footer_links.dart';
import 'package:confwebsite2023/features/footer/ui/footer_other_year_links.dart';
import 'package:confwebsite2023/features/footer/ui/footer_sns_links.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const DecoratedBox(
        decoration: BoxDecoration(
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
            SizedBox(height: 20),
            FooterOtherYearLinks(),
            SizedBox(height: 20),
            FooterSnsLinks(),
            SizedBox(height: 20),
            FooterLinks(),
            SizedBox(height: 20),
            FooterCopyright(),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
