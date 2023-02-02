import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

import 'navigation_detail_page.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NavigationLearn> {
  List<int> selectedItem = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItem.add(index) : selectedItem.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () async {
                final response = await _navigationPageclassNormal<bool>(
                    context, const NavigationDetailPage());

                if (response is bool) {
                  addSelected(index, response);
                }
              },
              child: Placeholder(
                color: selectedItem.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () async {},
      ),
    );
  }

  void _navigationPageclass(BuildContext context, Widget pagekey) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return pagekey;
        },
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }

  Future<T?> _navigationPageclassNormal<T>(
      BuildContext context, Widget pagekey) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return pagekey;
        },
        // fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }
}
