import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({
    Key? key,
    required this.title,
    required this.username,
  }) : super(key: key);
  final String title;
  final String name = 'veli';
  final String username;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              //en baz hali bu olmalı ama bu projelerde kullanılmaz
              "Bu tercih etmediğimiz kullanım şekli $name  ${name.length}",
              style: const TextStyle(
                decoration: TextDecoration.underline, //altını çizmek için
                fontSize: 16,

                wordSpacing: 2,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent,
              ),
              maxLines: 2,
              overflow: TextOverflow
                  .ellipsis, //fazla satır için yandan 3 nokta bırakma...
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
            ),
            Text(
              //bu kısmen daha iyi ama yeterli değil
              "İyi ama yeterli değil $name  ${name.length}",
              style: ProjectStyles.welcomeStyle,
              maxLines: 2,
              overflow: TextOverflow
                  .ellipsis, //fazla satır için yandan 3 nokta bırakma...
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
            ),
            Text(
              //olması gereken bu
              "Buy the best one! $name  ${name.length}",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor),
              maxLines: 2,
              overflow: TextOverflow
                  .ellipsis, //fazla satır için yandan 3 nokta bırakma...
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
            ),
            Text('Akif'),
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    decoration: TextDecoration.underline, //altını çizmek için
    fontSize: 16,

    wordSpacing: 2,
    letterSpacing: 2,
    fontWeight: FontWeight.w600,
    color: Colors.lime,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
