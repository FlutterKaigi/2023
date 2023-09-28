import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/features/header/ui/header_widget.dart';
import 'package:confwebsite2023/features/session_page/data/session_model.dart';
import 'package:confwebsite2023/features/session_page/session_detail/session_detail_desktop.dart';
import 'package:confwebsite2023/features/session_page/session_detail/session_detail_mobile.dart';
import 'package:flutter/material.dart';

class SessionDetail extends StatelessWidget {
  const SessionDetail({
    required this.sessionModel,
    super.key,
  });

  final SessionModel sessionModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoOnlyHeaderBar(),
      extendBodyBehindAppBar: true,
      body: ResponsiveWidget(
        largeWidget: SessionDetailDesktop(sessionModel: sessionModel),
        smallWidget: SessionDetailMobile(sessionModel: sessionModel),
      ),
    );
  }
}
