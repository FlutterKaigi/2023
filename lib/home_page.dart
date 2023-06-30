import 'package:confwebsite2023/components/flutter_kaigi_logo.dart';
import 'package:confwebsite2023/components/header/header_item_button_data.dart';
import 'package:confwebsite2023/components/header/header_widget.dart';
import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/staff/ui/staff_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    const sectionKey = (
      eventSectionKey: GlobalObjectKey('eventSectionKey'),
      sessionSectionKey: GlobalObjectKey('sessionSectionKey'),
      sponsorSectionKey: GlobalObjectKey('sponsorSectionKey'),
      staffSectionKey: GlobalObjectKey('staffSectionKey'),
    );

    final items = <HeaderItemButtonData>[
      HeaderItemButtonData(
        title: 'Staff',
        onPressed: () async => Scrollable.ensureVisible(
          sectionKey.staffSectionKey.currentContext!,
          curve: Curves.easeOutCirc,
          duration: const Duration(milliseconds: 750),
        ),
      ),
    ];

    return Scaffold(
      appBar: HeaderBar(
        items: items,
        onTitleTap: () async => scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 750),
          curve: Curves.easeOutCirc,
        ),
      ),
      body: _MainPageBody(
        scrollController: scrollController,
        staffSectionKey: sectionKey.staffSectionKey,
      ),
    );
  }
}

class _MainPageBody extends StatelessWidget {
  const _MainPageBody({
    required this.scrollController,
    required this.staffSectionKey,
  });

  final ScrollController scrollController;
  final GlobalKey<State<StatefulWidget>> staffSectionKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 30),
          const FlutterKaigiLogo(
            style: FlutterKaigiLogoStyle.markOnly,
            size: 180,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'FlutterKaigi 2023',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          StaffSection(
            key: staffSectionKey,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
