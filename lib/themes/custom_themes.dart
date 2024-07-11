import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkMode = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xff232323), //MainBgColor
    primary: Color(0xff970004), //Red
    onPrimaryContainer: Color(0xff3A3B3C), //Container color(search, article container,form fields)
    secondary: Color(0xffFFFFFF), //Text
    onSecondaryContainer: Color(0xffE0E0E0), //other options(placeholder/unselected/borders of field
    tertiary: Color(0xffFFFFFF), // Icon
    shadow: Color.fromARGB(255, 20, 20, 20),
    tertiaryContainer: Color.fromARGB(255, 255, 255, 255),
    onTertiaryContainer: Color.fromARGB(255, 110, 0, 4),
  )
);