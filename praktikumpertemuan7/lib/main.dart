import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext contect){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contoh stateless widget"),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text('halo saya statelles widget', style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}