import 'package:flutter/material.dart';

class ImageNetworkPage extends StatelessWidget {
  const ImageNetworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Asset Page"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
                const SizedBox(width: 5,),
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
                const SizedBox(width: 5,),
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
                const SizedBox(width: 5,),
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
                const SizedBox(width: 5,),
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
                const SizedBox(width: 5,),
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
                const SizedBox(width: 5,),
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
                const SizedBox(width: 5,),
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
                const SizedBox(width: 5,),
                Expanded(child: Image.network("https://broonet.com/wp-content/uploads/2020/03/mewarnai-gambar-kartun-9.jpg"),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}