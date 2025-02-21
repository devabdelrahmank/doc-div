import 'package:doc_div/feature/auth/auth_screen.dart';
import 'package:doc_div/feature/auth/login_screen.dart';
import 'package:doc_div/feature/auth/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        useMaterial3: true,
      ),
      home: const AuthScreen(),
      initialRoute: 'AuthScreen',
      routes: {
        'AuthScreen': (context) => const AuthScreen(),
        'LoginScreen': (context) => LoginScreen(),
        'SignupScreen': (context) => const SignupScreen(),
      },
    );
  }
}
