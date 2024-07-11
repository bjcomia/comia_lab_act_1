import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ContactDetailsPage extends StatefulWidget {
  const ContactDetailsPage({super.key});

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ContactTemplate(icon: Icons.email, detail: "bjcomia00@gmail.com"),
            ContactTemplate(
                icon: Icons.phone, detail: "09917745442 / 09565224774"),
            ContactTemplate(
                icon: Ionicons.logo_facebook,
                detail: "https://www.facebook.com/bjcomia016"),
            ContactTemplate(
                icon: Ionicons.logo_twitter,
                detail: "https://x.com/bene_comia"),
            ContactTemplate(
                icon: Ionicons.logo_instagram,
                detail: "https://www.instagram.com/b.comia/"),
            ContactTemplate(
                icon: Ionicons.logo_github,
                detail: "https://github.com/bjcomia")
          ],
        ),
      ),
    );
  }
}

class ContactTemplate extends StatefulWidget {
  final IconData icon;
  final String detail;
  const ContactTemplate({super.key, required this.icon, required this.detail});

  @override
  State<ContactTemplate> createState() => _ContactTemplateState();
}

class _ContactTemplateState extends State<ContactTemplate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      padding: const EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Row(
        children: [
          Icon(widget.icon),
          const SizedBox(width: 15),
          Text(
            widget.detail,
            style: TextStyle(
                color: Theme.of(context).colorScheme.secondary, fontSize: 14),
          )
        ],
      ),
    );
  }
}
