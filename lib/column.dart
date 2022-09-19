import 'package:flutter/material.dart';
class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Column Page"),
          backgroundColor: Colors.yellow[800],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.home, size: 50, color: Colors.blueAccent,),
              Icon(Icons.person, size: 50, color: Colors.pink),
              Icon(Icons.shop, size: 50, color: Colors.amber,),
            ],
          ),
        )
    );
  }
}
