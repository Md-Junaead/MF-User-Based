import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:v1_micro_finance/auth_view_model.dart';
import 'package:v1_micro_finance/login_screen.dart';
import 'package:v1_micro_finance/user_info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/userInfo': (context) => UserInfoScreen(),
        },
      ),
    );
  }
}
