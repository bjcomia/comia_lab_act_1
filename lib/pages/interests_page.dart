import 'package:flutter/material.dart';

class InterestsPage extends StatefulWidget {
  const InterestsPage({super.key});

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text(
                'Specializations and Area of Research',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary),
              ),
            const SpecializationCard(
              title: 'Data Visualization',
              description:
                  'Data Visualization involves creating visual representations of data to help understand and communicate information effectively. It encompasses various techniques and tools to transform raw data into charts, graphs, and other visual formats.',
            ),
            const SpecializationCard(
              title: 'Big Data Analytics',
              description:
                  'Big Data Analytics focuses on examining large and complex data sets to uncover hidden patterns, correlations, and insights. It uses advanced analytics techniques, including machine learning and statistical analysis, to analyze data from various sources.',
            ),
            const SpecializationCard(
              title: 'Programming (Back-End)',
              description:
                  'Back-End Programming involves developing the server side of applications, managing databases, and ensuring that everything on the server side works smoothly. It includes working with various programming languages, frameworks, and tools to build robust and scalable applications.',
            ),
            const SizedBox(height: 16),
            Text(
              'Projects',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            const ProjectCard(
              title: 'Tooth to Bytes',
              description:
                  'The main purpose of Tooth-to-Bytes was to introduce a Management Information System (MIS) tailored specifically to improve and streamline the management processes of the Dental Clinic of Dr. Ruth S. Luneta-Alolod. The project aimed to improve operational efficiency, boost data management processes, and elevate the overall quality of patient care by migrating from conventional paper-based methods to an integrated digital platform. The primary recipients of this system involved the patients, who experienced a heightened level of organization and efficiency in the services provided, as well as the dental clinic personnel, who gained advantages from improved data management and streamlined administrative processes.',
            ),
            const ProjectCard(
              title: 'Granny\'s Banking System',
              description:
                  'Granny\'s Banking System was developed using the PYTHON platform. It was a system designed to store all the data information, balances, loans, bank accounts, and bank money. This system adopted the idea of the banking features of BDO, BPI, and other banking platforms. Inspired by database management and object-oriented programming, this console-based system was simpler to comprehend and utilize. It included all of the fundamental features required in a bank. The main system was located in the Bank System and ATM system. This Banking System could also store all the data information and bank funds by transferring data from Python to JSON.',
            ),
            // Add more ProjectCard for additional projects
          ],
        ),
      ),
    );
  }
}

class SpecializationCard extends StatefulWidget {
  final String title;
  final String description;
  const SpecializationCard(
      {super.key, required this.title, required this.description});

  @override
  State<SpecializationCard> createState() => _SpecializationCardState();
}

class _SpecializationCardState extends State<SpecializationCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            const SizedBox(height: 8),
            Text(
              widget.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  const ProjectCard(
      {super.key, required this.title, required this.description});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            const SizedBox(height: 8),
            Text(
              widget.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
