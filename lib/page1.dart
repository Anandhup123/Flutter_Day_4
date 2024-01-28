import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('page2');
              },
              icon: Icon(Icons.arrow_forward))
        ],
        backgroundColor: const Color.fromARGB(255, 255, 227, 142),
        title: Title(
          color: Colors.black,
          child: Text(
            "Material App",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (txt, index) {
            return ListTile(
              title: Text("Person $index"),
              subtitle: Text("you have some message "),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://static.vecteezy.com/system/resources/previews/020/047/194/non_2x/cartoon-character-little-boy-thums-up-cartoon-free-png.png'),
              ),
              trailing: Text("7:50 pm"),
            );
          },
          separatorBuilder: (txt, index) {
            return Divider();
          },
          itemCount: 50,
        ),
      ),
    );
  }
}
