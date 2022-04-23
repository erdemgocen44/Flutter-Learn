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
            dimension: 50, //50*50lik bir kare yapar.
            child: Text("ss" * 50),
          ), //bu kullanımda sadece kare bir alan istediğimizde yapıyoruz
          Container(
            height: 200,
            constraints: const BoxConstraints(
                maxHeight: 250,
                maxWidth: 200,
                minWidth:
                    150), //componentin genişlemesi için verilir .bu sayede container verilen değerlere göre kenndi kendine byuyup kuculebilir.
            child: Text('Di' * 25),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.redAccent,
         
                border: Border.all(
                  width: 10,
                  color: Colors.blueGrey,
                ),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.green,
                    offset: Offset(0.1, 1),
                    blurRadius: 12,
                  ),
                ],
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.amberAccent],
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
