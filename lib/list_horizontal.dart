import 'package:flutter/material.dart';
class ListHorizontal extends StatelessWidget {
  const ListHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Horizontal"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  
                  height: 200,
                  width: 150,
                  child: Center(child: Text
                    ("index ke ${index + 1}")),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
