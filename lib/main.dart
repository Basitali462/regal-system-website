import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/locator.dart';
import 'package:regal_system_portfolio/pages/booking_page/booking_page.dart';
import 'package:regal_system_portfolio/pages/home_page/home_page.dart';
import 'package:regal_system_portfolio/routes/route_names.dart';
import 'package:regal_system_portfolio/routes/router.dart';
import 'package:regal_system_portfolio/services/navigation_services/navigation_services.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Regal Systems',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      builder: (context, child) => child,
      key: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
      /*home: Navigator(
        key: locator<NavigationService>().navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: homeRoute,
      ),*/
    );
  }
}
