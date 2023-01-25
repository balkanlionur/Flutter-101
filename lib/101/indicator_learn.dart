import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [Center(child: CenterCircularProgress())],
        ),
        body: const Center(
          child: LinearProgressIndicator(
            color: Colors.blue,
          ),
        ));
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      // color: Colors.white, mainde verildi.
      strokeWidth: 10,
      value: 0.9,
      backgroundColor: Colors.white,
    );
  }
}
