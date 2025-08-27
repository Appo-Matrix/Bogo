import 'package:bogo/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'core/routes/app_routes.dart';
import 'features/auth/screens/sign_in/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bogo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      routerConfig: AppRouter.router,
    );
  }
}
