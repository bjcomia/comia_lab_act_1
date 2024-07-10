import 'package:comia_lab_act_1/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme(
        //     brightness: brightness,
        //     primary: primary,
        //     onPrimary: onPrimary,
        //     secondary: secondary,
        //     onSecondary: onSecondary,
        //     error: error,
        //     onError: onError,
        //     surface: surface,
        //     onSurface: onSurface),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const WelcomePage(),
    );
  }
}
