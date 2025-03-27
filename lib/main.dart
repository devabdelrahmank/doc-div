import 'package:doc_div/feature/auth/auth_screen.dart';
import 'package:doc_div/feature/auth/login_screen.dart';
import 'package:doc_div/feature/auth/signup_screen.dart';
import 'package:doc_div/feature/doctors/providers/favorites_provider.dart';
import 'package:doc_div/feature/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavoritesProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          useMaterial3: true,
        ),
        home: const Home(),
      ),
    );
  }
}
