import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            print(index);
            return SizedBox(
              height: 200,
              child: Column(
                children: [
                  Expanded(child: Image.network('https://picsum.photos/200')),
                  Text('$index')
                ],
              ),
            );
          },
          itemCount: 10),
    );
  }
}
