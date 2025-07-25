import 'package:abstracta_to_dos/config/routes.dart';
import 'package:abstracta_to_dos/config/style/app_theme.dart';
import 'package:flutter/material.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AbstractaLightTheme().getTheme(),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      locale: const Locale('es', 'ES'),
    );
  }
}
