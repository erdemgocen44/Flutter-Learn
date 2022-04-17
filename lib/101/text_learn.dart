import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Buy the best one!" * 10,
          style: const TextStyle(
            decoration: TextDecoration.underline, //altını çizmek için
            fontSize: 16,
            color: Colors.red,
            wordSpacing: 2,
            letterSpacing: 2,
            fontWeight: FontWeight.w600,
          ),
          maxLines: 2,
          overflow: TextOverflow
              .ellipsis, //fazla satır için yandan 3 nokta bırakma...
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
