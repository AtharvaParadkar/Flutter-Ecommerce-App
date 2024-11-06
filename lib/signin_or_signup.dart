import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/signin.dart';
import 'package:flutter_ecommerce_app/screens/signup.dart';

class SigninOrSignupPage extends StatefulWidget {
  const SigninOrSignupPage({super.key});

  @override
  State<SigninOrSignupPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<SigninOrSignupPage> {
  // Initially show login page
  bool showLoginPage = true;

  // Toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return SignIn(
        ontap: togglePages,
      );
    } else {
      return SignUp(
        ontap: togglePages,
      );
    }
  }
}
