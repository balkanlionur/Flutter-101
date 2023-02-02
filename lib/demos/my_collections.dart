import 'package:flutter/material.dart';

class MyCollections extends StatefulWidget {
  const MyCollections({Key? key}) : super(key: key);

  @override
  State<MyCollections> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyCollections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_rounded)),
        title: const Text('My Collections'),
      ),
      body: ListView(
        children: [
          _paddingcard(context),
          _paddingcard(context),
          _paddingcard(context),
          _paddingcard(context),
        ],
      ),
    );
  }

  Padding _paddingcard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 30, right: 30, bottom: 12),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Image.network(
                  'https://picsum.photos/200',
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    'Abstracr Art',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Expanded(
                  child: Text(
                    '3,4 ETH',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
