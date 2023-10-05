import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:confwebsite2023/core/components/flutter_kaigi_logo.dart';
import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/header/data/header_item_button_data.dart';
import 'package:confwebsite2023/features/header/ui/flutter_kaigi_sns_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderBar extends HookWidget implements PreferredSizeWidget {
  const HeaderBar({
    required this.items,
    required this.onTitleTap,
    super.key,
  });

  final List<HeaderItemButtonData> items;
  final void Function() onTitleTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    Widget titleWidget(FlutterKaigiLogo logo) =>
        // SiteName
        TextButton(
          onPressed: onTitleTap,
          child: logo,
        );

    final mobileBar = Row(
      children: [
        const Column(),
        titleWidget(
          FlutterKaigiLogo(
            style: FlutterKaigiLogoStyle.markOnly,
            size: 36,
            showGradient: false,
            iconColor: baselineColorScheme.ref.secondary.secondary80,
          ),
        ),
        const Spacer(),
        OpenContainer(
          openElevation: 0,
          closedElevation: 0,
          openColor: Colors.transparent,
          closedColor: Colors.transparent,
          closedBuilder: (context, action) {
            return IconButton(
              onPressed: action,
              icon: const Icon(Icons.menu),
            );
          },
          openBuilder: (_, action) => _DrawerScreen(
            action: action,
            items: items,
            onTitleTap: onTitleTap,
          ),
        ),
      ],
    );

    final desktopBar = Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          titleWidget(
            FlutterKaigiLogo(
              style: FlutterKaigiLogoStyle.horizontal,
              size: 36,
              iconColor: baselineColorScheme.ref.secondary.secondary80,
              textStyle: GoogleFonts.poppins(
                color: baselineColorScheme.ref.secondary.secondary80,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
          ),
          const Spacer(),
          for (final e in items)
            TextButton(
              onPressed: e.onPressed,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  e.title,
                  style: textTheme.titleLarge!.copyWith(
                    color: baselineColorScheme.ref.secondary.secondary99,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 16,
          sigmaY: 16,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ResponsiveWidget(
            largeWidget: desktopBar,
            mediumWidget: mobileBar,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}

class _DrawerScreen extends StatelessWidget {
  const _DrawerScreen({
    required this.items,
    required this.onTitleTap,
    required this.action,
  });

  final void Function({Never returnValue}) action;
  final void Function() onTitleTap;
  final List<HeaderItemButtonData> items;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF602678),
            Color(0xFF302363),
            Color(0xFF12174A),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                  onPressed: action,
                  icon: const Icon(
                    Icons.close,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
          Spaces.vertical_20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: FlutterKaigiLogo(
                      style: FlutterKaigiLogoStyle.horizontal,
                      textStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                      size: 36,
                    ),
                  ),
                  onTap: () {
                    onTitleTap();
                    action();
                  },
                ),
                // FlutterKaigi Logo
                for (final e in items) ...[
                  Spaces.vertical_40,
                  InkWell(
                    onTap: () {
                      e.onPressed();
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: baselineColorScheme.ref.primary.primary70,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Spaces.horizontal_16,
                        Text(
                          e.title,
                          style: theme.textTheme.titleLarge!.copyWith(
                            color:
                                baselineColorScheme.ref.secondary.secondary99,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
          const Spacer(),
          // SNS Icons
          const FlutterKaigiSnsLinks(),
          // CopyRight
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              '@ FlutterKaigi 2023 実行委員会',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: baselineColorScheme.ref.secondary.secondary80,
              ),
            ),
          ),
          Spaces.vertical_10,
        ],
      ),
    );
  }
}

class LogoOnlyHeaderBar extends StatelessWidget implements PreferredSizeWidget {
  const LogoOnlyHeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    final logo = TextButton(
      onPressed: () => context.pop(),
      child: ResponsiveWidget(
        largeWidget: FlutterKaigiLogo(
          style: FlutterKaigiLogoStyle.horizontal,
          size: 36,
          iconColor: baselineColorScheme.ref.secondary.secondary80,
          textStyle: GoogleFonts.poppins(
            color: baselineColorScheme.ref.secondary.secondary80,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            height: 1.2,
          ),
        ),
        smallWidget: FlutterKaigiLogo(
          style: FlutterKaigiLogoStyle.markOnly,
          size: 36,
          showGradient: false,
          iconColor: baselineColorScheme.ref.secondary.secondary80,
        ),
      ),
    );
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 16,
          sigmaY: 16,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Row(
              children: [
                logo,
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
