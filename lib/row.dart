import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Row Page"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.home, size: 50, color: Colors.blueAccent,),
            Icon(Icons.person, size: 50, color: Colors.pink),
            Icon(Icons.shop, size: 50, color: Colors.amber,),
          ],
        ),
      ),
    );
  }
}
