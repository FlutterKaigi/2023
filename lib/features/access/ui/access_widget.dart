// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui_web' as ui;

import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/core/components/section_header.dart';
import 'package:confwebsite2023/core/theme.dart';
import 'package:flutter/material.dart';

class AccessWidget extends StatelessWidget {
  const AccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const details = SelectionArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _DetailsWidget(
            title: '開催場所',
            details: '株式会社ナビタイムジャパン',
          ),
          Spaces.vertical_16,
          _DetailsWidget(
            title: '所在地',
            details: '東京都港区南青山３丁目８-３８ １階',
          ),
        ],
      ),
    );
    const map = ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      child: _MapWidget(),
    );
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _AccessHeader(),
        ResponsiveWidget(
          largeWidget: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: details),
              map,
            ],
          ),
          mediumWidget: Column(
            children: [
              details,
              Spaces.vertical_40,
              map,
            ],
          ),
        ),
      ],
    );
  }
}

class _DetailsWidget extends StatelessWidget {
  const _DetailsWidget({
    required this.title,
    required this.details,
  });
  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Row(
      children: [
        Text(
          title,
          style: textTheme.bodyLarge!.copyWith(
            color: colorScheme.primary,
          ),
        ),
        Spaces.horizontal_16,
        Expanded(
          child: Text(
            details,
            style: textTheme.bodyLarge!.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class _AccessHeader extends StatelessWidget {
  const _AccessHeader();

  @override
  Widget build(BuildContext context) {
    const text = 'Access';
    return ResponsiveWidget(
      largeWidget: SectionHeader(
        text: text,
        style: AppTextStyle.pcHeading1,
      ),
      smallWidget: SectionHeader(
        text: text,
        style: AppTextStyle.spHeading1,
      ),
    );
  }
}

class _MapWidget extends StatelessWidget {
  const _MapWidget();

  @override
  Widget build(BuildContext context) {
    final screenType = ResponsiveWidget.getScreenSizeType(context);
    final width = switch (screenType) {
      ScreenSizeType.small => MediaQuery.sizeOf(context).width,
      _ => 605.0,
    };
    final height = switch (screenType) {
      ScreenSizeType.small => 270.0,
      _ => 455.0,
    };
    const viewId = 'google-map';
    const url =
        'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d35023.816848727554!2d139.72182199851724!3d35.64977197574884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c9e44b3a88d%3A0xd88abc149de2cf95!2z5qCq5byP5Lya56S-44OK44OT44K_44Kk44Og44K444Oj44OR44Oz!5e0!3m2!1sja!2sjp!4v1694343604778!5m2!1sja!2sjp';
    ui.platformViewRegistry.registerViewFactory(
      viewId,
      (int viewId) => IFrameElement()
        ..height = height.toString()
        ..width = width.toString()
        ..style.border = '0'
        ..referrerPolicy = 'no-referrer-when-downgrade'
        // ignore: unsafe_html
        ..src = url,
    );

    return SizedBox(
      height: height,
      width: width,
      child: const HtmlElementView(
        viewType: viewId,
      ),
    );
  }
}
