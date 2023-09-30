// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainPageRoute,
    ];

RouteBase get $mainPageRoute => GoRouteData.$route(
      path: '/',
      factory: $MainPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'sponsors/:name',
          parentNavigatorKey: SponsorPageRoute.$parentNavigatorKey,
          factory: $SponsorPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sessions/:id',
          parentNavigatorKey: SessionPageRoute.$parentNavigatorKey,
          factory: $SessionPageRouteExtension._fromState,
        ),
      ],
    );

extension $MainPageRouteExtension on MainPageRoute {
  static MainPageRoute _fromState(GoRouterState state) => const MainPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SponsorPageRouteExtension on SponsorPageRoute {
  static SponsorPageRoute _fromState(GoRouterState state) => SponsorPageRoute(
        name: state.pathParameters['name']!,
      );

  String get location => GoRouteData.$location(
        '/sponsors/${Uri.encodeComponent(name)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SessionPageRouteExtension on SessionPageRoute {
  static SessionPageRoute _fromState(GoRouterState state) => SessionPageRoute(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/sessions/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'4b968e74de44b70e76953d443f6eea819ca83aa3';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
