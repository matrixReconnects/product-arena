import 'package:flutter/material.dart';
import 'package:product_arena/auth/auth_screen.dart';
import 'package:product_arena/home.dart';
import 'package:product_arena/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Arena',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: const AuthScreen(),
    );
  }
}
