import 'package:confwebsite2023/core/components/responsive_widget.dart';
import 'package:confwebsite2023/features/session_page/session_detail/session_detail_desktop.dart';
import 'package:confwebsite2023/features/session_page/session_detail/session_detail_mobile.dart';
import 'package:flutter/material.dart';

class SessionDetail extends StatelessWidget {
  const SessionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeWidget: SessionDetailDesktop(),
      smallWidget: SessionDetailMobile(),
    );
  }
}
