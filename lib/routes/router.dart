import 'dart:js';

import 'package:flutter/material.dart';
import 'package:regal_system_portfolio/pages/booking_page/booking_page.dart';
import 'package:regal_system_portfolio/pages/home_page/home_page.dart';
import 'package:regal_system_portfolio/routes/route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case homeRoute:
      return getPageRoute(HomePage(), settings);
    case bookingRoute:
      return getPageRoute(BookingPage(), settings);
    default:
  }
}

PageRoute getPageRoute(Widget child, RouteSettings settings){
  return MaterialPageRoute(
    settings: settings,
    builder: (context) => child
  );
}