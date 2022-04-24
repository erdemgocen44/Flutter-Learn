import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text("Text Button"),
              onPressed: () {},
            ),
            ElevatedButton(
                onPressed:
                    () {}, //eğer bu butonun tıklanamaz olmasını istersek onPressed'i null yaparız ve tıklanabilirliği kalkar
                child: Text('Elevated Button')),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chrome_reader_mode_outlined)),
            FloatingActionButton(
                onPressed: () {}, child: const Icon(Icons.add)),

            InkWell(
                onTap: () {},
                child: const Text(
                    'custom button')), //tasarımda buttonun padding i olmasın sadece tıklanabilen bir alan olsun istersek bunu kullanırız
          ],
        ),
      ),
    );
  }
}
