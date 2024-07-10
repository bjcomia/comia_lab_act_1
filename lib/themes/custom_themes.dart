import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ThemeData lightMode = ThemeData(
//   textTheme: GoogleFonts.poppinsTextTheme(),
//   brightness: Brightness.light,
//   colorScheme: const ColorScheme.light(
//     surface: Color(0xffF8F8F8), //MainBgColor
//     primary: Color(0xff930005), //Red
//     onPrimaryContainer: Color(0xffFFFFFF), //Container Color(search, article container,form fields)
//     secondary: Color(0xff000000), //Text
//     onSecondaryContainer: Color(0xff828282), //other options(placeholder/unselected/borders of field
//     tertiary: Color(0xffFFFFFF), // Icon 
//     shadow: Color.fromARGB(255, 193, 193, 193),
//     tertiaryContainer: Color(0xff930005),
//     onTertiaryContainer: Color.fromARGB(255, 182, 55, 59),
//   )
// );

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