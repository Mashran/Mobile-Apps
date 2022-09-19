import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Page"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: GridView(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 2.5,
            mainAxisSpacing: 2.5),
        children: List.generate(20, (index) {
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar
                (SnackBar(
                duration: const Duration(seconds: 2),
                content: Text("You press the ${index + 1} card"),
                backgroundColor: Colors.green,
              ));
            },
            child: Card(
                color: (index + 1) % 2 == 1 ?  Colors.yellow : Colors.red,
                child: GridTile(
                    child: Center(child: Text("Index ke- ${index + 1}")))),
          );
        }
        ),
      ),
    );
  }
}
