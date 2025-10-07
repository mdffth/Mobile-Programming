import 'package:flutter/material.dart';
import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Mahasiswa',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        // leading: const FlutterLogo(
        //   size: 20,
        // ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'assets/img/profile.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // sebagai placeholder
                    return Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[300],
                      child: const Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 50,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Nama : Muhammad Fairuz Daffa Athallah\nNIM : 2341760079\n Jurusan : Teknologi Informasi\n Kelas : SIB-3B\nAlamat : Jl.Kebenaran No 10, Malang\nHobi : Berenang',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email),
                  SizedBox(width: 30),
                  Icon(Icons.call),
                  SizedBox(width: 30),
                  Icon(Icons.facebook),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Counter App'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => counterApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
