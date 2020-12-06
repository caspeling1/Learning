import 'package:flutter/material.dart';

import '../home_page.dart';
import '../person_page.dart';
import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting args passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    // if null, the route is anonymous
    if (settings.name == Routes.home.route) {
      return MaterialPageRoute(builder: (context) => HomePage());
    } else if (settings.name == Routes.person.route) {
      if (args is String) {
        return MaterialPageRoute(builder: (context) => PersonPage(args));
      }
    }

    // Handle all other uris and incorrect args
    return _notFoundPage();
  }

  /// Not a custom stateless widget here as placeholder for invalid uri/page
  static Route<dynamic> _notFoundPage() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('404: Page Not Found'),
        ),
        body: Center(
          child: Text('404: Page Not Found'),
        ),
      );
    });
  }
}
