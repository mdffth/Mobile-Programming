import 'package:flutter/material.dart';
import 'package:praktikumpertemuan7/main.dart';

void main() {
  runApp(GantiWarnaApp());
}

class GantiWarnaApp extends StatefulWidget {
  const GantiWarnaApp({super.key});

  @override
  State<GantiWarnaApp> createState() => _GantiwarnaAppState();
}

class _GantiwarnaAppState extends State<GantiWarnaApp> {
  bool _isBlue = true; // menentukan warna teks

  void ubahWarna() {
    setState(() {
      _isBlue = !_isBlue; // ubah nilai state
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _isBlue ? Colors.blue[100] : Colors.pink[100],
        appBar: AppBar(
          title: const Text("contoh Stateful : ubah warna"),
          backgroundColor: _isBlue ? Colors.blue : Colors.pink,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _isBlue ? 'Warna biru' : 'Warna Merah Muda',
                style: TextStyle(
                  fontSize: 24,
                  color: _isBlue ? Colors.blue[900] : Colors.pink[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: ubahWarna,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isBlue ? Colors.blue : Colors.pink,
                ),
                child: const Text("Ubah warna"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
