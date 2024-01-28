import 'package:flutter/material.dart';
import 'package:flutter3/homepage.dart';
import 'package:flutter3/page1.dart';
import 'package:flutter3/page2.dart';
import 'package:flutter3/page3.dart';

main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'page1': (context) => page1(),
        'page2': (context) => page2(),
        'page3': (context) => page3(),
      },
      home: InstagramHomePage(),
    );
  }
}
