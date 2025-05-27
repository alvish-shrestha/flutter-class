import 'package:flutter/material.dart';
import 'package:myproject/routes/app_route.dart';
import 'package:myproject/theme/theme_data.dart';
import 'package:myproject/view/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      title: "Font and Theme",
      theme: myApplicationTheme(),
      routes: AppRoute.getAppRoutes(),
    );
  }
}
