import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/services/auth/auth_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      //* begin interactive sign in process
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      //* obtain auth details from request
      final GoogleSignInAuthentication gAuth = await gUser!.authentication;

      //* create a new credential for user
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );

      //* finally, lets sign in
      await FirebaseAuth.instance.signInWithCredential(credential);

      if (FirebaseAuth.instance.currentUser != null) {
        Navigator.pushReplacement(
            // ignore: use_build_context_synchronously
            context, MaterialPageRoute(builder: (_) => const AuthPage()));
      }
    } catch (e) {
      debugPrint('Google Sign In Error %e');
    }
  }
}
