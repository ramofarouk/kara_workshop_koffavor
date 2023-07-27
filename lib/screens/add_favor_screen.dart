import 'package:flutter/material.dart';

class AddFavorScreen extends StatefulWidget {
  const AddFavorScreen({super.key});

  @override
  State<AddFavorScreen> createState() => _AddFavorScreenState();
}

class _AddFavorScreenState extends State<AddFavorScreen> {
  List<String> names = ["Jérémie", "Aïcha", "Thierry", "Esther"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ajouter une faveur",
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("VALIDER"), Icon(Icons.add)],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            DropdownButtonFormField(
              items: names
                  .map((name) => DropdownMenuItem(
                        child: Text(name),
                        value: name,
                      ))
                  .toList(),
              onChanged: (value) {},
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Choisir un ami"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Taper le motif"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Taper la description"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2050, 12, 31));
              },
              readOnly: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Choisir une date"),
            )
          ],
        ),
      ),
    );
  }
}
