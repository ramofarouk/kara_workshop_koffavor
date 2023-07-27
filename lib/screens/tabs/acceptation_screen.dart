import 'package:flutter/material.dart';

class AcceptationScreen extends StatefulWidget {
  const AcceptationScreen({super.key});

  @override
  State<AcceptationScreen> createState() => _AcceptationScreenState();
}

class _AcceptationScreenState extends State<AcceptationScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text("O"),
            ),
            title: Text("Prêt d'argent"),
            subtitle: Text("J'ai envie de m'offrir un core i9 à 150.000 Fcfa."),
          ),
        )
      ],
    );
  }
}
