import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View Page"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Padding(padding: EdgeInsets.all(8),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 15,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text("Index ke ${index + 1}"),
                ),
              );
            },
          ),
        ));
  }
}
