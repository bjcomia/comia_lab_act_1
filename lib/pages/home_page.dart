import 'package:flutter/material.dart';
import 'package:comia_lab_act_1/pages/contact_details_page.dart';
import 'package:comia_lab_act_1/pages/educational_background_page.dart';
import 'package:comia_lab_act_1/pages/interests_page.dart';
import 'package:comia_lab_act_1/pages/personal_information_page.dart';
import 'package:comia_lab_act_1/pages/skills_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  int tabIndex = 0;
  final titles = [
    "Personal Information",
    "Educational Background",
    "Skills",
    "Interests",
    "Contact Details"
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(changeTabIndex);
  }

  void changeTabIndex() {
    setState(() {
      tabIndex = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shadowColor: Theme.of(context).colorScheme.shadow,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            titles[tabIndex],
            style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          //Tab Bar
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onTertiaryContainer,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  offset: const Offset(1, 1),
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
            ),
            child: TabBar(
              controller: tabController,
              labelColor:
                  Theme.of(context).colorScheme.tertiary, //Selected Color
              unselectedLabelColor: Theme.of(context)
                  .colorScheme
                  .tertiary
                  .withOpacity(0.3), //Icon Color of Not Selected
              dividerColor:
                  Theme.of(context).colorScheme.onTertiaryContainer, //Line Below Color
              overlayColor: WidgetStatePropertyAll(
                Theme.of(context).colorScheme.tertiary,
              ), //Color when selected
              indicatorColor:
                  Theme.of(context).colorScheme.tertiary, //Selected Line Color
              tabs: const [
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.school)),
                Tab(icon: Icon(Icons.handyman)),
                Tab(icon: Icon(Icons.interests)),
                Tab(icon: Icon(Icons.contact_phone)),
              ],
            ),
          ),

          //Screens
          Expanded(
            flex: 5,
            child: TabBarView(
              controller: tabController,
              children: const [
                PersonalInformationPage(),
                EducationalBackgroundPage(),
                SkillsPage(),
                InterestsPage(),
                ContactDetailsPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
