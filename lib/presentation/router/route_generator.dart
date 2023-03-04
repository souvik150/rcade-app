import 'package:flutter/material.dart';
import 'package:rcade/presentation/screen/ailemnt_info.dart';
import 'package:rcade/presentation/screen/physcial_activity.dart';
import 'package:rcade/presentation/screen/splash_screen.dart';
import 'package:rcade/presentation/screen/started_1.dart';
import 'package:rcade/presentation/screen/started_2.dart';

class RouteGenerator extends NavigatorObserver {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SpashScreen());
      case '/started-one':
        return MaterialPageRoute(builder: (_) => const StartedOne());
      case '/started-two':
        return MaterialPageRoute(builder: (_) => const StartedTwo());
      case '/physical-activity':
        return MaterialPageRoute(builder: (_) => const PhysicalActivity());
      case '/ailment-info':
        return MaterialPageRoute(builder: (_) => const AilmentInfo());
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('ERROR'),
      ),
    );
  });
}
