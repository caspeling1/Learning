// Use an extension as an enum https://stackoverflow.com/a/58552304
enum Routes { home, person }

extension RoutesExtension on Routes {
  String get route {
    switch (this) {
      case Routes.home:
        return '/';
      case Routes.person:
        return '/person';
      default:
        return '/404';
    }
  }
}
