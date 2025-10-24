import 'package:flutter/material.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Mahasiswa")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(2, 6),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/image/profile.jpg'),
                    ),
                  ),

                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Nama: Muhammad Fairuz Daffa Athallah",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "NIM: 2341760079",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Jurusan: Teknologi Informasi",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Prodi: Sistem Informasi Bisnis",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              const Divider(thickness: 2, color: Colors.blueAccent),
              const SizedBox(width: 20),
              const Text(
                "MataKuliah Semester 5",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Pemrograman Mobile"),
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Manajemen Proyek"),
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Penjaminan Mutu Perangkat Lunak"),
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Perencanaan Sumber Daya"),
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Manajemen Rantai Pasok"),
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Kecerdasan Bisnis"),
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Metodologi Penelitian"),
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Audit Sistem Informasi"),
                    ),
                    ListTile(
                      leading: Icon(Icons.book, color: Colors.blueAccent),
                      title: Text("Kesehatan, Keselamatan Kerja"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
