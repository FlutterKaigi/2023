import 'package:confwebsite2023/core/theme.dart';
import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:flutter/material.dart';

final class SessionsTable extends StatelessWidget {
  const SessionsTable(
    this._sessions, {
    super.key,
  });

  final List<Session> _sessions;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const _SessionsTableRow();
      },
      separatorBuilder: (context, index) {
        return Spaces.vertical_40;
      },
      itemCount: 10,
    );
  }
}

final class _SessionsTableRow extends StatelessWidget {
  const _SessionsTableRow();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
