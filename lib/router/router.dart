import 'package:auto_route/auto_route.dart';
import 'package:overlay_test/pages/page1.dart';
import 'package:overlay_test/pages/page2.dart';
import 'package:overlay_test/skeleton_page.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
    // generateNavigationHelperExtension: true,
    // ignore: always_specify_types
    routes: <AutoRoute>[
      CustomRoute<void>(
          path: '/',
          initial: true,
          page: RouterPageWithDrawer,
          children: [
            CustomRoute<void>(
              page: Page1,
              initial: true,
            ),
            CustomRoute<void>(page: Page2),
          ])
    ])
class $AppRouter {}
