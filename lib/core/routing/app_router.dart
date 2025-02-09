import 'package:doctory/core/di/dependancy_injection.dart';
import 'package:doctory/core/routing/routes.dart';
import 'package:doctory/features/home/presentation/view/home_view.dart';
import 'package:doctory/features/login/presentaion/cubits/login_cubit/login_cubit.dart';
import 'package:doctory/features/login/presentaion/views/login_view.dart';
import 'package:doctory/features/onboarding/presentaion/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );

      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );

      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
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
