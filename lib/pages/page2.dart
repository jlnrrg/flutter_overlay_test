import 'package:flutter/material.dart';
import 'package:onboarding_overlay/onboarding_overlay.dart';

final GlobalKey<OnboardingState> onboardingKey = GlobalKey<OnboardingState>();

final FocusNode _overlayKey = FocusNode();

List<OnboardingStep> steps(BuildContext context) => [
      OnboardingStep(
        focusNode: _overlayKey,
        titleText: 'Hi',
        bodyText: '''Check this out''',
        hasLabelBox: false,
        fullscreen: true,
        overlayColor: Theme.of(context).primaryColorDark.withOpacity(0.8),
        hasArrow: false,
        showPulseAnimation: true,
      ),
    ];

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Onboarding(
        key: onboardingKey,
        globalOnboarding: true,
        steps: steps(context),
        child: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                final onboarding = Onboarding.of(context);
                onboarding?.show();
              },
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Focus(
                    focusNode: _overlayKey,
                    child: Text(
                      'test',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
