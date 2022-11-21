// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    WelcomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const WelcomeScreen(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          WelcomeScreenRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [WelcomeScreen]
class WelcomeScreenRoute extends PageRouteInfo<void> {
  const WelcomeScreenRoute()
      : super(
          WelcomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'WelcomeScreenRoute';
}
