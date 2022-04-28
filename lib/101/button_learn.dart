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
              child: Text(
                "Text Button",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              style: ButtonStyle(backgroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.red;
              })),
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
                    'custom button')), //tasarımda butonun padding i olmasın sadece tıklanabilen bir alan olsun istersek bunu kullanırız
            Container(
              height: 200,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 45, left: 45),
                  child: Text(
                    'Place Bid',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
