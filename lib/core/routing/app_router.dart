import 'package:doctory/core/routing/routes.dart';
import 'package:doctory/features/login/ui/login_view.dart';
import 'package:doctory/features/onboarding/ui/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
   Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    
    
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );

      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );

      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
