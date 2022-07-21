import 'package:flutter/cupertino.dart';

class NavigationService{
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName){
    return navigatorKey.currentState.pushNamed(routeName);
  }

  goBack(){
    return navigatorKey.currentState.pop();
  }
}