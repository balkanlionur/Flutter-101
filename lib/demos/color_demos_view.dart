import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key}) : super(key: key);

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red), label: 'Red'),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _Mycolor.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _Mycolor.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _Mycolor { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
