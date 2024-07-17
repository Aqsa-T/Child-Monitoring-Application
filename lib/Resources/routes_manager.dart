import 'package:flutter/material.dart';
import 'package:fyp_app/Pages/History/main_page.dart';
import 'package:fyp_app/Pages/History/search_history_page.dart';
import 'package:fyp_app/Pages/History/sites_visited_page.dart';
import 'package:fyp_app/Pages/Main/main_page.dart';
import 'package:fyp_app/Pages/OnBoarding/onboarding_page.dart';
import 'package:fyp_app/Pages/Registration/log_in.dart';
import 'package:fyp_app/Pages/Registration/sign_up.dart';
import 'package:fyp_app/Resources/strings_manager.dart';

import '../Pages/Splash/splash_page.dart';

class Routes {
  static const String splash = "/";
  static const String onboarding = "onboarding";
  static const String login = "login";
  static const String signUp = "sign up";
  static const String history = 'history';
  static const String visited = 'sites visited';
  static const String historySearch = 'search history';
  static const String aboutMother = "about mother";
  static const String aboutBaby = "about baby";
  static const String home = "home";
  static const String feeding = "feeding";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const Login());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case Routes.visited:
        return MaterialPageRoute(builder: (_) => const SitesVisited());
      case Routes.history:
        return MaterialPageRoute(builder: (_) => const HistoryMain());
      case Routes.historySearch:
        return MaterialPageRoute(builder: (_) => const SearchHistory());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
