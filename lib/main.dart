import 'package:flutter/material.dart';
import 'package:top_food/burger.dart';
import 'package:top_food/counter.dart';
import 'package:top_food/img.dart';

import 'package:top_food/simple_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SimpleWidgets(),
      // home: Img(),
     // home: Burger(),
     home: Counter(),
    );
  }
}
