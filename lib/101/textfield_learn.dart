import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        buildCounter: (BuildContext,
            {required int currentLength,
            required bool isFocused,
            required int? maxLength}) {
          return _animatedContainer(currentLength);
        },
        decoration: const InputDecoration(
          prefix: Icon(Icons.mail),
          border: OutlineInputBorder(),
          labelText: 'Mail',
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int currentLength) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}
