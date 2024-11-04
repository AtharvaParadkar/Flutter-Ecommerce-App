import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/text_field.dart';
import 'package:flutter_ecommerce_app/screens/signup.dart';
import 'package:flutter_ecommerce_app/theme/theme.dart';
import 'package:gap/gap.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController(),
      passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  bool obstext = true;
  String email = '', passsword = '';

  trySignIn() {
    final isValid = formkey.currentState!.validate();
    if (isValid) {
      formkey.currentState!.save();
      final snacks = SnackBar(
        content: Center(
          child: Text(
            '$email - $passsword',
            style: primaryTextStyle(16, FontWeight.w700),
          ),
        ),
        backgroundColor: buttonColor,
        shape: const StadiumBorder(),
        animation: const AlwaysStoppedAnimation(10),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      );
      ScaffoldMessenger.of(context).showSnackBar(snacks);
    } else {
      final snacks = SnackBar(
        content: Center(
          child: Text(
            'Error!',
            style: primaryTextStyle(16, FontWeight.w700),
          ),
        ),
        backgroundColor: buttonColor,
        shape: const StadiumBorder(),
        animation: const AlwaysStoppedAnimation(10),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      );
      ScaffoldMessenger.of(context).showSnackBar(snacks);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: Stack(
          children: [
            Positioned(
              top: 52,
              left: 20,
              child: IconButton(
                alignment: Alignment.center,
                onPressed: Navigator.of(context).pop,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                style: IconButton.styleFrom(
                    backgroundColor: secondaryColor,
                    fixedSize: const Size(44, 44),
                    iconSize: 20,
                    padding: const EdgeInsets.only(left: 5)),
              ),
            ),
            Positioned(
              top: 128,
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Hello Again!',
                          style: primaryTextStyle(28, FontWeight.w500),
                        ),
                        Text(
                          'Welcome Back You\'ve Been Missed',
                          style: secondaryTextStyle(16, FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const Gap(50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email Address',
                            style: primaryTextStyle(16, FontWeight.w500),
                          ),
                          const Gap(15),
                          MyTextField(
                            controller: emailController,
                            hintText: 'atharva@gmial.com',
                            obscureText: true,
                            validator: (value) {
                              if (value.toString().isEmpty ||
                                  !value.toString().contains('@')) {
                                return 'Enter Valid Email Id';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const Gap(30),
                          Text(
                            'Password',
                            style: primaryTextStyle(16, FontWeight.w500),
                          ),
                          const Gap(16),
                          MyTextField(
                            controller: passwordController,
                            hintText: '●●●●●●●●',
                            obscureText: true,
                            validator: (value) {
                              if (value.toString().length < 8) {
                                return 'Password must be greater than 8 characters';
                              } else {
                                return null;
                              }
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Gap(180),
                              Text(
                                'Recovery Password',
                                style: secondaryTextStyle(12, FontWeight.w200),
                              ),
                            ],
                          ),
                          const Gap(40),
                          ElevatedButton(
                            onPressed: () {
                              trySignIn();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: buttonColor,
                                fixedSize: const Size(335, 54)),
                            child: Text(
                              'Sign In',
                              style: primaryTextStyle(18, FontWeight.w500),
                            ),
                          ),
                          const Gap(30),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: secondaryColor,
                                fixedSize: const Size(335, 54)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/google_logo.png',
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  ' Sign in With Google',
                                  style: primaryTextStyle(18, FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 746,
              left: 73,
              child: Row(
                children: [
                  Text(
                    'Don\'t Have An Account ',
                    style: secondaryTextStyle(12, FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const SignUp())),
                    child: Text(
                      'Sign Up For Free',
                      style: primaryTextStyle(12, FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
