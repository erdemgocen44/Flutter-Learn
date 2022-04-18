import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container and SizedBox"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 300,
            child: Text("a" * 500),
          ),
          const SizedBox
              .shrink(), //ekranda sadece boş bir alan oluşturmak istediğimizde kullanıyoruz
          SizedBox.square(
            dimension: 50, //50*50lik bir kare yapar
            child: Text("ss" * 50),
          ), //bu kullanımda sadec kare bir alan istediğimizde yapıyoruz
          Container(),
        ],
      ),
    );
  }
}
