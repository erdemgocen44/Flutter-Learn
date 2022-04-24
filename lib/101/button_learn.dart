import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: const Text("Text Button"),
            onPressed: () {},
          ),
          ElevatedButton(onPressed: () {}, child: Text('Elevated Button'))
        ],
      ),
    );
  }
}
