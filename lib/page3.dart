import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  page3({super.key});

  @override
  State<page3> createState() => _page4State();
}

class _page4State extends State<page3> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page5');
              },
              icon: Icon(Icons.arrow_forward_ios_rounded))
        ],
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "do you have some data",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              _counter++;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
