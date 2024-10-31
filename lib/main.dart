import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Ecommerce App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
