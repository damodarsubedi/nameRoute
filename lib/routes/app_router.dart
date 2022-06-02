import 'package:flutter/material.dart';
import 'package:name_route_demo/main.dart';
import 'package:name_route_demo/pages/car_page.dart';
import 'package:name_route_demo/routes/route_name.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var args = settings.arguments; //this will holds our constructor parameter to be sent on another page/screen
    switch (settings.name) {
      case RouteName.car:
        return MaterialPageRoute(settings: settings, builder: (_) => CarPage(args as CarPageConstructor));
      case RouteName.navigationPageRoute:
        return MaterialPageRoute(settings: settings, builder: (_) => const MyApp());

      default:
        // In case of any route error occurred
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('No such page'),
        ),
      );
    });
  }
}
