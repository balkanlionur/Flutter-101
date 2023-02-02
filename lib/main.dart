import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';

import '101/appbar_learn.dart';
import '101/button_learn.dart';
import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/container_sized_box_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import '101/indicator_learn.dart';
import '101/list_tile.dart';
import '101/list_view.dart';
import '101/list_view_builder.dart';
import '101/navigation_detail_page.dart';
import '101/navigation_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/scaffold_learn.dart';
import '101/stack_learn.dart';
import '101/statefull_learn.dart';
import '101/statefull_life_cycle_learn.dart';
import '101/stateless_learn.dart';
import '101/textfield_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/demos_view.dart';
import 'demos/my_collections.dart';
import 'demos/my_collections_v2.dart';
import 'demos/stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0)),
      home: //const StatefullLifeCycleLearn(message: "OnurrB"),
          const StackDemoView(),
    );
  }
}
