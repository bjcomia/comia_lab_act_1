import 'package:comia_lab_act_1/pages/welcome_page.dart';
import 'package:comia_lab_act_1/themes/custom_themes.dart';
import 'package:flutter/material.dart';

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
      theme: lightMode,
      home: const WelcomePage(),
    );
  }
}
