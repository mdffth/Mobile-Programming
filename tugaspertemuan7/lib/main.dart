import 'package:flutter/material.dart';
import 'routes.dart'; // panggil file routes.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contoh Routing Flutter',
      initialRoute: '/gallery',
      routes: routes, // ambil dari routes.dart
    );
  }
}
