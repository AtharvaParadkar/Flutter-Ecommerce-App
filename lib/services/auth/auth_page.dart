import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/home.dart';
import 'package:flutter_ecommerce_app/screens/onboard1.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  Future<User?> checkAuthStatus() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<User?>(
        future: checkAuthStatus(),
        builder: (context, snapshot) {
          debugPrint(
              'Auth state: ${snapshot.hasData ? "Logged In" : "Logged Out"}');

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          //& User is Logged in
          if (snapshot.data != null) {
            return const HomePage();
          }
          //& User is Not Logged in
          else {
            return const Onboard1();
          }
        },
      ),
    );
  }
}
