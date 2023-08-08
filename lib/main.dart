import 'package:flutter/material.dart';
import 'package:good_travel/features/presentation/pages/bonus_page.dart';
import 'package:good_travel/features/presentation/pages/register_page.dart';
import 'package:good_travel/features/presentation/pages/splash_page.dart';
import 'package:good_travel/features/presentation/pages/started_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/started': (context) => const StartedPage(),
        '/register': (context) => const RegisterPage(),
        '/bonus': (context) => const BonusPage(),
      },
    );
  }
}
