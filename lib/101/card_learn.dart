import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          Card(
            margin: ProjectMargins.cardMargin,
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          Card(
            margin: ProjectMargins.cardMargin,
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('Ali'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}
