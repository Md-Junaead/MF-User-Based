import 'package:flutter/material.dart';
import 'package:v1_micro_finance/configs/routes/routes_name.dart';
import 'package:v1_micro_finance/login_screen.dart';
import 'package:v1_micro_finance/user_info_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
//Auth Screen routes name

      case RoutesName.loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen());

      case RoutesName.userInfoScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => UserInfoScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
