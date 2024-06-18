import 'package:flutter/material.dart';
import 'package:personal_habit_tracker/features/home/views/home_view.dart';
import 'router_constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const HomeView());
      default:
        return _notFound();
    }
  }

  static Route<dynamic> _notFound() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('ERROR!'),
        ),
        body: const Center(
          child: Text('Page not Found!'),
        ),
      ),
    );
  }
}
