import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Scaffold & AppBar"),
          backgroundColor: Colors.teal,
          actions: const [Icon(Icons.search), Icon(Icons.settings)],
        ),
        body: const Center(child: Text("Ini body Aplikasi")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Header Drawer',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(leading: Icon(Icons.message), title: Text('Messages')),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
      ),
    );
  }
}
