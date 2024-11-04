import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/theme/theme.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      this.validator});

  final TextEditingController controller;
  final validator;
  final String hintText;
  final bool obscureText;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late bool obstext=true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 335,
      child: TextFormField(
        controller: widget.controller,
        obscureText: obstext,
        style: primaryTextStyle(16, FontWeight.w600),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: secondaryTextStyle(16, FontWeight.w400),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: secondaryColor,
          suffixIcon: widget.obscureText
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obstext = !obstext;
                    });
                  },
                  icon: Icon(
                    obstext
                        ? Icons.remove_red_eye_sharp
                        : Icons.visibility_off_sharp,
                    color: const Color.fromARGB(255, 112, 123, 129),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
