import 'package:flutter/material.dart';

class ImageAssetPage extends StatelessWidget {
  const ImageAssetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Asset Page"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Image.asset("assets/images/msd.png"),
      ),
    );
  }
}
