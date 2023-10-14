import 'package:confwebsite2023/core/components/left_filled_icon_button.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WantedWidget extends StatelessWidget {
  const WantedWidget({
    required this.title,
    required this.content,
    required this.ticketButtonTitle,
    required this.ticketOnPressed,
    required this.archiveButtonTitle,
    required this.archiveOnPressed,
    this.child,
    this.image,
    this.subContent,
    super.key,
  });

  final String title;
  final String content;
  final String? subContent;
  final Widget? child;
  final String ticketButtonTitle;
  final VoidCallback ticketOnPressed;
  final String archiveButtonTitle;
  final VoidCallback archiveOnPressed;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeWidget: _WantedDesktop(
        title: title,
        content: content,
        subContent: subContent,
        image: image,
        ticketButtonTitle: ticketButtonTitle,
        ticketOnPressed: ticketOnPressed,
        archiveButtonTitle: archiveButtonTitle,
        archiveOnPressed: archiveOnPressed,
        child: child,
      ),
      smallWidget: _WantedMobile(
        title: title,
        content: content,
        subContent: subContent,
        image: image,
        ticketButtonTitle: ticketButtonTitle,
        ticketOnPressed: ticketOnPressed,
        archiveButtonTitle: archiveButtonTitle,
        archiveOnPressed: archiveOnPressed,
        child: child,
      ),
    );
  }
}

class _WantedDesktop extends StatelessWidget {
  const _WantedDesktop({
    required this.title,
    required this.content,
    required this.subContent,
    required this.image,
    required this.ticketButtonTitle,
    required this.ticketOnPressed,
    required this.archiveButtonTitle,
    required this.archiveOnPressed,
    this.child,
  });

  final String title;
  final String content;
  final String? subContent;
  final Widget? child;
  final String? image;
  final String ticketButtonTitle;
  final VoidCallback ticketOnPressed;
  final String archiveButtonTitle;
  final VoidCallback archiveOnPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader.leftAlignment(
          text: title,
          style: GoogleFonts.poppins(
            fontSize: 60,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            height: 1.1,
          ),
          gradient: GradientConstant.accent.primary,
        ),
        Spaces.vertical_24,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Spaces.vertical_24,
                  if (subContent != null) ...[
                    Text(
                      subContent!,
                      style: textTheme.bodyMedium!.copyWith(
                        color: colorScheme.secondary,
                      ),
                    ),
                    Spaces.vertical_24,
                  ],
                  if (child != null) ...[
                    child!,
                    Spaces.vertical_24,
                  ],
                  FittedBox(
                    child: Row(
                      children: [
                        LeftFilledIconButton(
                          width: 193,
                          onPressed: ticketOnPressed,
                          buttonTitle: ticketButtonTitle,
                          icon: Icons.arrow_forward_ios,
                        ),
                        Spaces.horizontal_40,
                        LeftFilledIconButton(
                          width: 193,
                          onPressed: archiveOnPressed,
                          buttonTitle: archiveButtonTitle,
                          icon: Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spaces.horizontal_60,
            if (image != null)
              FittedBox(
                fit: BoxFit.scaleDown,
                child: SvgPicture.asset(
                  image!,
                  width: 360,
                  height: 360,
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _WantedMobile extends StatelessWidget {
  const _WantedMobile({
    required this.title,
    required this.content,
    required this.subContent,
    required this.image,
    required this.ticketButtonTitle,
    required this.ticketOnPressed,
    required this.archiveButtonTitle,
    required this.archiveOnPressed,
    this.child,
  });

  final String title;
  final String content;
  final String? subContent;
  final String? image;
  final Widget? child;
  final String ticketButtonTitle;
  final VoidCallback ticketOnPressed;
  final String archiveButtonTitle;
  final VoidCallback archiveOnPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader.leftAlignment(
          text: title,
          style: GoogleFonts.poppins(
            fontSize: 48,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            height: 1.1,
          ),
          gradient: GradientConstant.accent.primary,
        ),
        Spaces.vertical_24,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              content,
              style: textTheme.bodyLarge!.copyWith(
                color: colorScheme.onPrimaryContainer,
              ),
            ),
            Spaces.vertical_24,
            if (subContent != null) ...[
              Text(
                subContent!,
                style: textTheme.bodyMedium!.copyWith(
                  color: colorScheme.secondary,
                ),
              ),
              Spaces.vertical_24,
            ],
            if (child != null) ...[
              child!,
              Spaces.vertical_24,
            ],
            LeftFilledIconButton(
              width: MediaQuery.of(context).size.width,
              onPressed: ticketOnPressed,
              buttonTitle: ticketButtonTitle,
              icon: Icons.arrow_forward_ios,
            ),
            Spaces.vertical_24,
            LeftFilledIconButton(
              width: MediaQuery.of(context).size.width,
              onPressed: archiveOnPressed,
              buttonTitle: archiveButtonTitle,
              icon: Icons.arrow_forward_ios,
            ),
          ],
        ),
        Spaces.vertical_40,
        if (image != null)
          Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(
                image!,
                width: 200,
                height: 200,
              ),
            ),
          ),
      ],
    );
  }
}
