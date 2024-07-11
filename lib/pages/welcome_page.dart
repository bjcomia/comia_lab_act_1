import 'package:comia_lab_act_1/pages/home_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to My Laboratory Activity 1",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const HomePage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: Theme.of(context).colorScheme.shadow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Theme.of(context).colorScheme.primary),
                  child: Text(
                    "Proceed",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
