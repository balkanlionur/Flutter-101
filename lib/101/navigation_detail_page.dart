import 'package:flutter/material.dart';

class NavigationDetailPage extends StatefulWidget {
  const NavigationDetailPage({Key? key, this.isOkey = false}) : super(key: key);

  final bool isOkey;

  @override
  State<NavigationDetailPage> createState() => _NavigationDetailPageState();
}

class _NavigationDetailPageState extends State<NavigationDetailPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // ModalRoute.of(context).settings.arguments; -- veri yakalama kodu
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop(!widget.isOkey);
              },
              icon: Icon(Icons.check,
                  color: widget.isOkey ? Colors.red : Colors.green),
              label: widget.isOkey ? const Text('Red') : const Text('Buton')),
        ));
  }
}
