import 'package:animations/animations.dart';
import 'package:confwebsite2023/components/flutter_kaigi_logo.dart';
import 'package:confwebsite2023/components/header/header_item_button_data.dart';
import 'package:confwebsite2023/components/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: logo,
          ),
        );

    final mobileBar = Row(
      children: [
        const Column(),
        titleWidget(
          FlutterKaigiLogo(
            style: FlutterKaigiLogoStyle.markOnly,
            size: 36,
            showGradient: false,
            iconColor: theme.colorScheme.secondary.withOpacity(0.8),
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

    final width = MediaQuery.of(context).size.width;
    final largeScreenSize = ResponsiveWidget.largeScreenSize.toDouble();
    final desktopBar = Center(
      child: SizedBox(
        width: largeScreenSize + ((width - largeScreenSize) / 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            titleWidget(
              FlutterKaigiLogo(
                style: FlutterKaigiLogoStyle.horizontal,
                size: 36,
                iconColor: theme.colorScheme.secondary.withOpacity(0.8),
                textStyle: textTheme.titleLarge!.copyWith(
                  color: theme.colorScheme.secondary.withOpacity(0.8),
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
                      color: theme.colorScheme.secondary.withOpacity(0.99),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: ResponsiveWidget(
        largeWidget: desktopBar,
        smallWidget: mobileBar,
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
            children: [
              const Spacer(),
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              primary: true,
              shrinkWrap: true,
              children: [
                ListTile(
                  title: FlutterKaigiLogo(
                    style: FlutterKaigiLogoStyle.horizontal,
                    textStyle: theme.textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                    size: 36,
                  ),
                  onTap: () {
                    onTitleTap();
                    action();
                  },
                ),
                // FlutterKaigi Logo
                for (final e in items) ...[
                  const SizedBox(height: 40),
                  ListTile(
                    title: Text(
                      e.title,
                      style: theme.textTheme.titleLarge,
                    ),
                    onTap: () {
                      e.onPressed();
                      Navigator.pop(context);
                    },
                    // 白ポチ
                    leading: Icon(
                      Icons.circle,
                      color: theme.colorScheme.secondary.withOpacity(0.7),
                      size: 8,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const Spacer(),
          // SNS Icons
          // TODO(YumNumm): SNS Icons impl after #26 was merged.
          // CopyRight
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              '@ FlutterKaigi 2023 実行委員会',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: const Color(0xFFCCC2DC),
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
