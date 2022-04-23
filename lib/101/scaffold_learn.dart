import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold Samples"),
        ),
        body: const Text("Merhaba"),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.read_more), label: "read"),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: "mail")
        ]));
  }
}
