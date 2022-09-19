import 'package:flutter/material.dart';

class ColumnMixRow extends StatelessWidget {
  const ColumnMixRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column mix Row"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Icon(Icons.home, size: 50, color: Colors.blue,),
                  Text("HOME")
                ],),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Icon(Icons.person, size: 50, color: Colors.red,),
                  Text("PERSON")
                ],),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Icon(Icons.shop, size: 50, color: Colors.yellow,),
                  Text("SHOP")
                ],),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Text("HOME")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.red,
                  ),
                  Text("PERSON")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.shop,
                    size: 50,
                    color: Colors.yellow,
                  ),
                  Text("SHOP")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
