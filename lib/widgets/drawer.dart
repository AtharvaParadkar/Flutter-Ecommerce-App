import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/signin.dart';
import 'package:flutter_ecommerce_app/theme/theme.dart';
import 'package:gap/gap.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    void signUserOut() {
      FirebaseAuth.instance.signOut();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SignIn()),
      );
    }

    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryColor,
              secondaryColor,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 37,
                    backgroundImage: NetworkImage(
                        'https://w7.pngwing.com/pngs/364/361/png-transparent-account-avatar-profile-user-avatars-icon-thumbnail.png'),
                  ),
                  const Gap(7),
                  Text(
                    '${user.email}',
                    style: primaryTextStyle(14, FontWeight.w600),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: IconButton(
                onPressed: signUserOut,
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'Logout',
                style: primaryTextStyle(14, FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
