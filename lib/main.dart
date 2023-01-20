import 'package:clean_architecture_flutter_sampang/router.dart';
import 'package:clean_architecture_flutter_sampang/features/auth/presentation/views/login_view.dart';
import 'package:clean_architecture_flutter_sampang/services/navigation_service.dart';
import 'package:flutter/material.dart';

import 'dependency_injector.dart';

void main() {
  di();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginView(),
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: generateRoute,
    );
  }
}
