import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme LightTextTheme = TextTheme(
    headline3: GoogleFonts.montserrat(
      color: Colors.red,
    ),
    subtitle1: GoogleFonts.poppins(
      color: Colors.black87,
      fontSize: 24,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headline3: GoogleFonts.montserrat(
      color: Colors.white,
    ),
    subtitle1: GoogleFonts.poppins(
      color: Colors.orange,
      fontSize: 24,
    ),
  );
}
