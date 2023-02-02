import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          const Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.white),
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.white),
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.white),
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.white),
                ],
              )),
          // IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          const Divider(),
          SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.white),
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.white),
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.white),
                  Container(width: 100, color: Colors.green),
                  Container(width: 100, color: Colors.white),
                ],
              )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close))
        ],
      ),
    );
  }
}
