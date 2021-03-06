import 'package:flutter/material.dart';
import 'package:flutter_learn/101/button_learn.dart';
import 'package:flutter_learn/101/scaffold_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const ButtonLearnView(),
    );
  }
}
