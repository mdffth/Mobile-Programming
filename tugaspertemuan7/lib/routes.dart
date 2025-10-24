import 'package:flutter/material.dart';
import 'package:tugaspertemuan7/gallery_page.dart';
import 'package:tugaspertemuan7/home_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Utama')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          child: const Text('Buka Halaman Profil'),
        ),
      ),
    );
  }
}

// Map routes
final Map<String, WidgetBuilder> routes = {
  '/': (context) => const home_page(),
  '/profile': (context) => const profile_page(),  
  '/gallery': (context) => const gallery_page(),  
};  
