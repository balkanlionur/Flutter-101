import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSize iconSize = IconSize();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: Colors.red,
            iconSize: 40,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: iconColors.froly,
            iconSize: iconSize.iconSmall,
          )
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = Colors.blue;
}
