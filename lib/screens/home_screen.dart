import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kara_workshop/screens/tabs/acceptation_screen.dart';
import 'package:kara_workshop/screens/tabs/refusing_screen.dart';
import 'package:kara_workshop/screens/tabs/waiting_screen.dart';

import 'add_favor_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "KOFFAVOR",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "En attente",
              ),
              Tab(
                text: "Acceptation",
              ),
              Tab(
                text: "Refus",
              )
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white54,
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TabBarView(children: [
            WaitingScreen(),
            AcceptationScreen(),
            RefusingScreen(),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            signUp("test@gmail.com", "123456789");
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (BuildContext context) => AddFavorScreen()));
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  signUp(email, password) async {
    var firebaseAuth = FirebaseAuth.instance;

    await firebaseAuth
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      if (value != null) {
        showDialog(
            context: context,
            builder: (BuildContext context) => const Text("Alerte"));
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => AddFavorScreen()),
            (route) => false);
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (BuildContext context) => AddFavorScreen()));
      }
    });
  }
}
