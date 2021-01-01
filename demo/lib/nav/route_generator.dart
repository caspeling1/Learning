import 'package:demo/components/appbar.dart';
import 'package:demo/data/models/model.dart';
import 'package:flutter/material.dart';

import '../components/pages/home_page.dart';
import '../components/pages/person_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting args passed in when calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'person':
        if (args is User) {
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
        appBar: getAppBar(title: 'Error'),
        body: Center(
          child: Text('404: Page Not Found'),
        ),
      );
    });
  }
}
