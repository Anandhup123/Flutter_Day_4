import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          50,
          (index) => ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page3');
              },
              child: Text("Next")),
        ),
      )),
    );
  }
}
