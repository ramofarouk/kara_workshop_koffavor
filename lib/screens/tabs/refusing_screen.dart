import 'package:flutter/material.dart';

class RefusingScreen extends StatefulWidget {
  const RefusingScreen({super.key});

  @override
  State<RefusingScreen> createState() => _RefusingScreenState();
}

class _RefusingScreenState extends State<RefusingScreen> {
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
