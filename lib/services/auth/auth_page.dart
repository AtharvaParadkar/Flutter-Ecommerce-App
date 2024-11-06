import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/home.dart';
import 'package:flutter_ecommerce_app/screens/onboard1.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          debugPrint('Auth state: ${snapshot.hasData ? "Logged In" : "Logged Out"}');
          //& User is Logged in
          if(snapshot.hasData){
            return const HomePage();
          }
          //& User is Not Logged in
          else{
            return const Onboard1();
          }
        },
      ),
    );
  }
}
