import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);
  final String textt = 'Onur';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: textt),
          const TitleTextWidget(text: 'Onur2'),
          const TitleTextWidget(text: 'Onur3'),
          const TitleTextWidget(text: 'Onur4'),
        ],
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline3);
  }
}
