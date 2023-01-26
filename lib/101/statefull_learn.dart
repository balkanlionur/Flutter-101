import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int countValue = 0;
  int counterCustom = 0;
  String welcomeTitle = LanguageItems.welcomeTitle;

  void _updateCounter(bool IsValue) {
    if (IsValue == true) {
      countValue = countValue + 1;
    } else {
      countValue = countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(countValue.toString(),
                  style: Theme.of(context).textTheme.headline5)),
          const Placeholder(),
          ElevatedButton(
              onPressed: () {
                ++counterCustom;
                setState(() {});
              },
              child: Text('$welcomeTitle $counterCustom'))
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
