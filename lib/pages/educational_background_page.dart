import 'package:flutter/material.dart';

class EducationalBackgroundPage extends StatefulWidget {
  const EducationalBackgroundPage({super.key});

  @override
  State<EducationalBackgroundPage> createState() =>
      _EducationalBackgroundPageState();
}

class _EducationalBackgroundPageState extends State<EducationalBackgroundPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ExpansionTile(
            title: const Text(
              "Tertiary",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            collapsedBackgroundColor: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7),
            expansionAnimationStyle: AnimationStyle(curve: Curves.easeInOut, duration: const Duration(milliseconds: 700)),
            iconColor: Theme.of(context).colorScheme.secondary,
            collapsedTextColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.6),
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/myPhoto1.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const ListTile(
                title: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "School: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Batangas State University",
                      ),
                      TextSpan(
                        text: "\nYear Graduated: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "N/A",
                      ),
                      TextSpan(
                        text: "\nAward: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "N/A",
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text(
              "Secondary",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            collapsedBackgroundColor: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7),
            expansionAnimationStyle: AnimationStyle(curve: Curves.easeInOut, duration: const Duration(milliseconds: 700)),
            iconColor: Theme.of(context).colorScheme.secondary,
            collapsedTextColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.6),
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/secondary.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              const ListTile(
                title: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "School: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Batangas State University / Alangilan Senior High School",
                      ),
                      TextSpan(
                        text: "\nYear Graduated: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "2019 / 2021",
                      ),
                      TextSpan(
                        text: "\nAward: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Achiever / With High Honors",
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text(
              "Elementary",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            collapsedBackgroundColor: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7),
            expansionAnimationStyle: AnimationStyle(curve: Curves.easeInOut, duration: const Duration(milliseconds: 700)),
            iconColor: Theme.of(context).colorScheme.secondary,
            collapsedTextColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.6),
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/elementary.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              const ListTile(
                title: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "School: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "Batangas City East Elementary School",
                      ),
                      TextSpan(
                        text: "\nYear Graduated: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "2015",
                      ),
                      TextSpan(
                        text: "\nAward: ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "8th Honorable Mention",
                      ),
                    ],
                  ),
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
