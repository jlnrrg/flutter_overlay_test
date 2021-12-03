import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:overlay_test/router/router.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: () {
      AutoRouter.of(context).push(const Page2Route());
    }));
  }
}
