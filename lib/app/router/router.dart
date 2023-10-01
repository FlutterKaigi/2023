import 'package:confwebsite2023/app/home_page.dart';
import 'package:confwebsite2023/app/session_page.dart';
import 'package:confwebsite2023/app/sessions_page.dart';
import 'package:confwebsite2023/app/sponsor_page.dart';
import 'package:confwebsite2023/features/session/data/session.dart';
import 'package:confwebsite2023/features/session/data/session_provider.dart';
import 'package:confwebsite2023/features/sponsor/data/sponsor_data_source.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) => GoRouter(
      debugLogDiagnostics: kDebugMode,
      navigatorKey: rootNavigatorKey,
      routes: $appRoutes,
      redirect: (context, state) async {
        if (state.fullPath == '/${SponsorPageRoute.path}') {
          final sponsorName = state.pathParameters['name'];
          if (sponsorName == null) {
            // Sponsor name is null.
            return MainPageRoute.path;
          }

          final existsSponsor = ref.watch(
            allSponsorsProvider.select(
              (allSponsors) => allSponsors.any((s) => s.name == sponsorName),
            ),
          );
          if (!existsSponsor) {
            // Not found sponsor.
            return MainPageRoute.path;
          }
        }
        if (state.fullPath == '/${SessionPageRoute.path}') {
          final sessionId = state.pathParameters['id'];
          if (sessionId == null) {
            // Session name is null.
            return MainPageRoute.path;
          }

          final sessions = ref.read(sessionsProvider);
          final existsSession = sessions.any(
            (s) => s is TalkSession && s.uuid == sessionId,
          );
          if (!existsSession) {
            // Not found session.
            return MainPageRoute.path;
          }
        }

        return null;
      },
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(state.error.toString()),
          ),
        ),
      ),
    );

@TypedGoRoute<MainPageRoute>(
  path: MainPageRoute.path,
  routes: [
    TypedGoRoute<SponsorPageRoute>(
      path: SponsorPageRoute.path,
    ),
    TypedGoRoute<SessionsPageRoute>(
      path: SessionsPageRoute.path,
      routes: [
        TypedGoRoute<SessionPageRoute>(
          path: SessionPageRoute.path,
        ),
      ],
    ),
  ],
)
class MainPageRoute extends GoRouteData {
  const MainPageRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MainPage();
  }
}

class SponsorPageRoute extends GoRouteData {
  const SponsorPageRoute({required this.name});

  static const path = 'sponsors/:name';

  static final $parentNavigatorKey = rootNavigatorKey;

  final String name;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        sponsorNameProvider.overrideWithValue(name),
      ],
      child: const SponsorPage(),
    );
  }
}

class SessionsPageRoute extends GoRouteData {
  const SessionsPageRoute();

  static const path = 'sessions';

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SessionsPage();
  }
}

class SessionPageRoute extends GoRouteData {
  const SessionPageRoute({required this.id});

  final String id;

  static const path = ':id';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        sessionIdProvider.overrideWithValue(id),
      ],
      child: const SessionPage(),
    );
  }
}
