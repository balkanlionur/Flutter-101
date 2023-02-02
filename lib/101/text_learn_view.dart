import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = 'Onur';

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  wordSpacing: 2,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                  color: Colors.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyle.welcomeStyle,
            ),
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor),
            ),
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyle {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      color: Colors.blue,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
