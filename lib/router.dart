import 'package:clean_architecture_flutter_sampang/features/auth/presentation/views/welcome_view.dart';
import 'package:flutter/material.dart';


const welcomeView = "welcomeView";


Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch(routeSettings.name) {
    case welcomeView:
      final String name = routeSettings.arguments as String;
      return MaterialPageRoute(builder: (context) => WelcomeView(name: name));
    default:
      return MaterialPageRoute(builder: (context) => Scaffold(body: Center(child: Text("No such route ${routeSettings.name}"),),));
  }
}