import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
            })),
            onPressed: () {},
          ),
          const ElevatedButton(onPressed: null, child: Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_outlined)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.abc_sharp),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red, padding: const EdgeInsets.all(10)),
            onPressed: () {},
            child: const SizedBox(
              width: 200,
              child: Text('data'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(height: 200, color: Colors.white10),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: const Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
              child: Text(
                'Place Bid',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
