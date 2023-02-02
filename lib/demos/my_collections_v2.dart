import 'package:flutter/material.dart';

class MyCollectionsV2 extends StatefulWidget {
  const MyCollectionsV2({Key? key}) : super(key: key);

  @override
  State<MyCollectionsV2> createState() => _MyCollectionsV2State();
}

class _MyCollectionsV2State extends State<MyCollectionsV2> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: ProjectImage().imageCollections,
          title: 'Abstracr Art',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage().imageCollections,
          title: 'Abstracr Art2',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage().imageCollections,
          title: 'Abstracr Art3',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImage().imageCollections,
          title: 'Abstracr Art4',
          price: 3.4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingClass().paddingHorizonal,
        itemBuilder: (context, index) {
          return Card(
            margin: PaddingClass().paddingBottom,
            child: SizedBox(
              height: 300,
              child: Padding(
                padding: PaddingClass().paddingGeneral,
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset(
                      _items[index].imagePath,
                      fit: BoxFit.cover,
                    )),
                    Padding(
                      padding: PaddingClass().paddingGeneral,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_items[index].title),
                          Text(_items[index].price.toString()),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingClass {
  final paddingGeneral = const EdgeInsets.all(8.0);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingHorizonal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImage {
  final imageCollections = 'assets/image_collections.png';
}
