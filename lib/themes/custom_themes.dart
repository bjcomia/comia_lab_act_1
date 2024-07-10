import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(),
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color(0xffF8F8F8), //MainBgColor
    primary: Color(0xff930005), //Red
    onPrimaryContainer: Color(0xffFFFFFF), //Container Color(search, article container,form fields)
    secondary: Color(0xff000000), //Text
    onSecondaryContainer: Color(0xff828282), //other options(placeholder/unselected/borders of field
    tertiary: Color(0xffFFFFFF), // Icon 
    shadow: Color.fromARGB(255, 193, 193, 193),
    tertiaryContainer: Color(0xff930005),
    onTertiaryContainer: Color.fromARGB(255, 182, 55, 59),
  )
);