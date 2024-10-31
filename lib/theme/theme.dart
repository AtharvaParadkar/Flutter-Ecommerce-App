import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color.fromARGB(255, 26, 37, 48);
const Color secondaryColor = Color.fromARGB(255, 22, 31, 40);
const Color buttonColor = Color.fromARGB(255, 91, 158, 255);

TextStyle primaryTextStyle(double size, FontWeight fw) {
  return GoogleFonts.poppins(
    fontSize: size,
    color: const Color.fromARGB(255, 255, 255, 255),
    fontWeight: fw,
  );
}

TextStyle secondaryTextStyle(double size, FontWeight fw) {
  return TextStyle(
    fontFamily: 'AirbnbCerealApp',
    fontSize: size,
    fontWeight: fw,
    color: const Color.fromARGB(255, 112, 123, 129),
  );
}

TextStyle typeTextStyle(double size,FontWeight fw){
  return GoogleFonts.poppins(
    fontSize: size,
    color: const Color.fromARGB(255, 91, 158, 255),
    fontWeight: fw,
  );
}
