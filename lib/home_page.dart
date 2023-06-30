import 'package:confwebsite2023/features/footer/ui/footer.dart';
import 'package:confwebsite2023/features/staff/ui/staff_section.dart';
import 'package:confwebsite2023/features/top_session/ui/top_session.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text('FlutterKaigi 2023'),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TopSession(),
              StaffSection(),
              SizedBox(height: 200),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
