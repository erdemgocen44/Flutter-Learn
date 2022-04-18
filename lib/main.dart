import 'package:flutter/material.dart';
import 'package:flutter_learn/101/container_sized_box_learn.dart';
import 'package:flutter_learn/101/text_learn.dart';

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
      home: ContainerSizedBoxLearn(),
      // TextLearnView(
      //   title: 'Text Learn',
      //   username: 'Username',
      // ),
    );
  }
}
