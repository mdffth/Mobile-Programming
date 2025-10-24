import 'package:flutter/material.dart';

class gallery_page extends StatelessWidget {
  const gallery_page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> pic = [
      'assets/image/pic1.jpg',
      'assets/image/pic2.jpg',
      'assets/image/pic3.jpg',
      'assets/image/pic4.png',
      'assets/image/pic5.jpg',
      'assets/image/pic6.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery", style: TextStyle(fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(
            pic.length,
            (index) => ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Image.asset(pic[index], fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
