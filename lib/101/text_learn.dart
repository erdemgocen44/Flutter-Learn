import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, required this.title, required this.username})
      : super(key: key);
  final String title;
  final String name = 'veli';
  final String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Buy the best one! $name  ${name.length}",
              style: const TextStyle(
                decoration: TextDecoration.underline, //altını çizmek için
                fontSize: 16,

                wordSpacing: 2,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
                color: Colors.lime,
              ),
              maxLines: 2,
              overflow: TextOverflow
                  .ellipsis, //fazla satır için yandan 3 nokta bırakma...
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
            ),
            Text(
              "Buy the best one! $name  ${name.length}",
              style: ProjectStyles.welcomeStyle,
              maxLines: 2,
              overflow: TextOverflow
                  .ellipsis, //fazla satır için yandan 3 nokta bırakma...
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
            ),
            Text(
              "Buy the best one! $name  ${name.length}",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.red),
              maxLines: 2,
              overflow: TextOverflow
                  .ellipsis, //fazla satır için yandan 3 nokta bırakma...
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
            ),
            Text(username ?? ''),
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
