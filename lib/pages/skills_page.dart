import 'package:comia_lab_act_1/tempData/skilss_data.dart';
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 100),
              //Hard Skills
              AvatarGlow(
                startDelay: const Duration(milliseconds: 1000),
                glowColor: Theme.of(context).colorScheme.secondary,
                glowShape: BoxShape.circle,
                glowRadiusFactor: 0.13,
                curve: Curves.fastOutSlowIn,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
                        offset: const Offset(1, 10),
                        blurRadius: 13,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              "Technical Skills",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 30,
                              ),
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimaryContainer,
                            actionsAlignment: MainAxisAlignment.center,
                            content: SizedBox(
                              height: 130,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int index = 0;
                                      index < hardSkills.length;
                                      index++)
                                    Text(
                                      "\u2022 ${hardSkills[index]}",
                                      style: TextStyle(
                                        color:
                                            Theme.of(context).colorScheme.secondary,
                                        fontSize: 17,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'Close'),
                                child: Text(
                                  'Close',
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.secondary),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.primary),
                      fixedSize: const WidgetStatePropertyAll(
                        Size(200, 200),
                      ),
                    ),
                    child: Text(
                      "Technical Skills",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
          
              const SizedBox(height: 70),
          
              //Soft Skills
              AvatarGlow(
                startDelay: const Duration(milliseconds: 1000),
                glowColor: Theme.of(context).colorScheme.secondary,
                glowShape: BoxShape.circle,
                glowRadiusFactor: 0.13,
                curve: Curves.fastOutSlowIn,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
                        offset: const Offset(1, 10),
                        blurRadius: 13,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              "Non-Technical Skills",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 30,
                              ),
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimaryContainer,
                            actionsAlignment: MainAxisAlignment.center,
                            content: SizedBox(
                              height: 130,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int index = 0;
                                      index < softSkills.length;
                                      index++)
                                    Text(
                                      "\u2022 ${softSkills[index]}",
                                      style: TextStyle(
                                        color:
                                            Theme.of(context).colorScheme.secondary,
                                        fontSize: 17,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'Close'),
                                child: Text(
                                  'Close',
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.secondary),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.primary),
                      fixedSize: const WidgetStatePropertyAll(
                        Size(200, 200),
                      ),
                    ),
                    child: Text(
                      "Non-Technical Skills",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
