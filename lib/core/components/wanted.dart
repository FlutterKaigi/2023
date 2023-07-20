import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WantedWidget extends StatelessWidget {
  const WantedWidget({
    required this.title,
    required this.content,
    required this.subContent,
    required this.buttonTitle,
    required this.image,
    required this.onPressed,
    super.key,
  });

  final String title;
  final String content;
  final String subContent;
  final String buttonTitle;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeWidget: WantedDesktop(
        title: title,
        content: content,
        subContent: subContent,
        buttonTitle: buttonTitle,
        image: image,
        onPressed: onPressed,
      ),
      smallWidget: WantedMobile(
        title: title,
        content: content,
        subContent: subContent,
        buttonTitle: buttonTitle,
        image: image,
        onPressed: onPressed,
      ),
    );
  }
}

class WantedDesktop extends StatelessWidget {
  const WantedDesktop({
    required this.title,
    required this.content,
    required this.subContent,
    required this.buttonTitle,
    required this.image,
    required this.onPressed,
    super.key,
  });

  final String title;
  final String content;
  final String subContent;
  final String buttonTitle;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          text: title,
          style: GoogleFonts.poppins(
            fontSize: 60,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            height: 1.5,
          ),
        ),
        //TODO Spacerの修正をする。
        const SizedBox(height: 24),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            width: 1128,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        content,
                        style: textTheme.bodyLarge!.copyWith(
                          color: colorScheme.onPrimaryContainer,
                        ),
                      ),
                      //TODO Spacerの修正をする。
                      const SizedBox(height: 24),
                      Text(
                        subContent,
                        style: textTheme.bodyMedium!.copyWith(
                          color: colorScheme.secondary,
                        ),
                      ),
                      //TODO Spacerの修正をする。
                      const SizedBox(height: 24),
                      SizedBox(
                        width: 250,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorScheme.primary,
                          ),
                          onPressed: onPressed,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                buttonTitle,
                                style: textTheme.labelLarge?.copyWith(
                                  color: colorScheme.onPrimary,
                                  fontSize: 14,
                                ),
                              ),
                              //TODO Spacerの修正をする。
                              const SizedBox(width: 8),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: colorScheme.onPrimary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 86),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: SvgPicture.asset(
                    image,
                    width: 360,
                    height: 360,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WantedMobile extends StatelessWidget {
  const WantedMobile({
    required this.title,
    required this.content,
    required this.subContent,
    required this.buttonTitle,
    required this.image,
    required this.onPressed,
    super.key,
  });

  final String title;
  final String content;
  final String subContent;
  final String buttonTitle;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          text: title,
          style: GoogleFonts.poppins(
            fontSize: 48,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            height: 1.5,
          ),
        ),
        //TODO Spacerの修正をする。
        const SizedBox(height: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content,
              style: textTheme.bodyLarge!.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontSize: 16,
              ),
            ),
            //TODO Spacerの修正をする。
            const SizedBox(height: 24),
            Text(
              subContent,
              style: textTheme.bodyMedium!.copyWith(
                color: colorScheme.secondary,
                fontSize: 14,
              ),
            ),
            //TODO Spacerの修正をする。
            const SizedBox(height: 24),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                ),
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      buttonTitle,
                      style: textTheme.labelLarge?.copyWith(
                        color: colorScheme.onPrimary,
                        fontSize: 14,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: colorScheme.onPrimary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        //TODO Spacerの修正をする。
        const SizedBox(height: 40),
        Center(
          child: SvgPicture.asset(
            image,
            width: 200,
            height: 200,
          ),
        ),
        //TODO Spacerの修正をする。
        const SizedBox(height: 200),
      ],
    );
  }
}
