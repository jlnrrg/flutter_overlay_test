// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/page1.dart' as _i2;
import '../pages/page2.dart' as _i3;
import '../skeleton_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RouterPageWithDrawerRoute.name: (routeData) {
      return _i4.CustomPage<void>(
          routeData: routeData,
          child: _i1.RouterPageWithDrawer(),
          opaque: true,
          barrierDismissible: false);
    },
    Page1Route.name: (routeData) {
      return _i4.CustomPage<void>(
          routeData: routeData,
          child: const _i2.Page1(),
          opaque: true,
          barrierDismissible: false);
    },
    Page2Route.name: (routeData) {
      return _i4.CustomPage<void>(
          routeData: routeData,
          child: const _i3.Page2(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(RouterPageWithDrawerRoute.name, path: '/', children: [
          _i4.RouteConfig(Page1Route.name,
              path: '', parent: RouterPageWithDrawerRoute.name),
          _i4.RouteConfig(Page2Route.name,
              path: 'Page2', parent: RouterPageWithDrawerRoute.name)
        ])
      ];
}

/// generated route for [_i1.RouterPageWithDrawer]
class RouterPageWithDrawerRoute extends _i4.PageRouteInfo<void> {
  const RouterPageWithDrawerRoute({List<_i4.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'RouterPageWithDrawerRoute';
}

/// generated route for [_i2.Page1]
class Page1Route extends _i4.PageRouteInfo<void> {
  const Page1Route() : super(name, path: '');

  static const String name = 'Page1Route';
}

/// generated route for [_i3.Page2]
class Page2Route extends _i4.PageRouteInfo<void> {
  const Page2Route() : super(name, path: 'Page2');

  static const String name = 'Page2Route';
}
