import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouterPageWithDrawer extends AutoRouter with AutoRouteWrapper {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget wrappedRoute(BuildContext context) {
    // return Scaffold(
    //     backgroundColor: Colors.transparent,
    //     drawer: const CustomDrawer(),
    //     body: _SkeletonChild(child: this));

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      body: _SkeletonChild(child: this),
    );
  }
}

class _SkeletonChild extends StatelessWidget {
  const _SkeletonChild({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const ResizableWidget.right(
        //   initial: 304,
        //   min: 97,
        //   max: 500,
        //   child: Drawer(),
        // ),
        SizedBox(width: 200),
        Expanded(child: child),
      ],
    );
  }
}
