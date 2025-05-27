import 'package:myproject/view/login_screen.dart';

class AppRoute {
  AppRoute._();

  static const String loginRoute = "/loginScreen";

  static getAppRoutes() {
    return {loginRoute: (context) => const LoginScreen()};
  }
}
