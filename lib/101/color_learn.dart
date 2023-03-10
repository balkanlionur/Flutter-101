import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Text(
              'data',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).errorColor),
            ),
          )
        ],
      ),
    );
  }
}

class ColorItems {
  final Color porche = const Color(0xffEDB61);
  final Color sulu = const Color.fromARGB(198, 237, 97, 1);
}
