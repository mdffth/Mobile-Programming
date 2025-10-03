import 'dart:ui';
import 'package:flutter/material.dart';


void main() {
  runApp(DaffaApp());
}

//deklarasi widget
class DaffaApp extends StatefulWidget { 
  @override
  _DaffaAppState createState() => _DaffaAppState();// penghubung antara widget & state 
}

//deklarasi state untuk menyimpan method
class _DaffaAppState extends State<DaffaApp> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) { // menjalankan method 
      _startAutoScroll();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

void _startAutoScroll() {
  _scrollController.animateTo(
    _scrollController.position.maxScrollExtent,
    duration: const Duration(seconds: 30),
    curve: Curves.linear,
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daffa App",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "DaffaApp",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Arial',
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/maxresdefault.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '''
Rayakan hari ini
Besok sisa sengsara
Belum pulan kau pun di sini
Temani diriku

Kita bersandiwara
Bicara tak semestinya
Walau kita tahu nyatanya
Semua tak baik saja

Ada masanya kita
Mencuri ruang dan waktu
Walau pasti berlalu
Biarkan saja kita ke sana
Selagi masih bisa bersama
Bersama

Semuanya sementara
Kita di ujung cerita
Untuk lima menit coba kau
Mengambil alih dunia

Ada masanya kita
Mencuri ruang dan waktu
Walau pasti berlalu
Biarkan saja kita ke sana
Selagi masih bisa bersama

Ada masanya kita
Mencuri ruang dan waktu
Walau pasti berlalu
Biarkan saja kita ke sana (kita ke sana)
Selama-lamanya (selama-lamanya)
Selagi masih bisa bersama
Bersama oh
Bersama
Bersama oh oh
''',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    fontFamily: 'Arial',
                    shadows: [
                      Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 4.0,
                        color: Color.fromARGB(167, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}