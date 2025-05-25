import 'package:flutter/material.dart';
import 'package:myproject/view/navigation_screen/dashboard.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Dashboard(), debugShowCheckedModeBanner: false);
  }
}
