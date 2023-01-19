import 'package:flutter/cupertino.dart';

class NavigationService {

  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  navigateTo(String routeName, {dynamic arguments}) {
    return navigationKey.currentState!.pushReplacementNamed(routeName, arguments: arguments);
  }

  navigateToAndBack(String routeName, {dynamic arguments}) {
    return navigationKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  goBack(bool value) {
    return navigationKey.currentState!.pop(value);
  }
}