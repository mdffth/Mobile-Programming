//praktikum5

import 'dart:io';
import 'dart:convert';
import 'dart:flutter/material.dart';
import 'dart:path_provider/path_provider.dart';
import 'dart:path/path.dart' as path;

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pertemuan12/main1.dart';

// operasi baca tulis file Json
class FileService {
  Future<Directory> get documentsDirectory async {
    return await getApplicationCacheDirectory();
  }

  // simpan data ke file (String)
  Future<File> writeFile(String fileName, String content) async {
    final Directory dir = await documentsDirectory;
    final File file = File(path.join(dir.path, fileName));
    return file.writeAsString(content);
  }

  // baca data dari file
  Future<String> readFile(String fileName) async {
    try {
      final Directory dir = await documentsDirectory;
      final File file = File(path.join(dir.path, fileName));
      return await file.readAsString();
    } catch (e) {
      return '';
    }
  }

  // simpan object sebagai Json
  Future<File> writeJson(String fileName, Map<String, dynamic> json) async {
    final String content = jsonEncode(json);
    return writeFile(fileName, content);
  }

  // baca json dari file
  Future<Map<String, dynamic>> readJson(String fileName) async {
    try {
      final String content = await readFile(fileName);
      return jsonDecode(content);
    } catch (e) {
      return {};
    }
  }

  // cek apakah file ada
  Future<bool> fileExists(String fileName) async {
    final Directory dir = await documentsDirectory;
    final File file = File(path.join(dir.path, fileName));
    return file.exists();
  }

  // hapus file
  Future<void> deleteFile(String fileName) async {
    try {
      final Directory dir = await documentsDirectory;
      final File file = File(path.join(dir.path, fileName));
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      print('Error deleting file: $e');
    }
  }
}

// untuk menyimpan dan membaca user data

class UserDataService {
  final FileService _fileService = FileService();
  final String _fileName = 'user_data.json';

  Future<void> saveUserData({
    required String name,
    required String email,
    int? age,
  }) async {
    final Map<String, dynamic> userData = {
      'name': name,
      'email': email,
      'age': age ?? 0,
      'last_update': DateTime.now().toIso8601String(),
    };
    await _fileService.writeJson(_fileName, userData);
  }

  Future<Map<String, dynamic>?> readUserData() async {
    final exists = await _fileService.fileExists(_fileName);
    if (!exists) return null;

    final Map<String, dynamic> data = await _fileService.readJson(_fileName);
    return data.isNotEmpty ? data : null;
  }

  Future<void> deleteUserData() async {
    await _fileService.deleteFile(_fileName);
  }

  Future<bool> hasUserData() async {
    return await _fileService.fileExists(_fileName);
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      title: 'User Data JSON Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: UserProfilePage(),
    );
  }
}

// UI profile page

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final UserDataService _userService = UserDataService();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  Map<String, dynamic>? _savedData;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final data = await _userService.readUserData();
    setState(() {
      _savedData = data;
    });
  }

  Future<void> _saveUserData() async {
    await _userService.readUserData(
      name: _nameController.text.trim(),
      email: _emailController.text.trim(),
      age: int.tryParse(_ageController.text),
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Data berhasil disimpan')));

    await _loadUserData();
  }

  //hapus file JSON
  Future<void> _deleteUserData() async {
    await _userService.deleteUserData();
    setState(() => _savedData = null);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Data user dihapus')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil User (File JSON)')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                labelText: 'Usia',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),

            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: Icon(Icons.delete),
                  label: Text('Simpan'),
                  onPressed: _saveUserData,
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.delete),
                  label: Text('Hapus'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                  ),
                  onPressed: _deleteUserData,
                ),
              ],
            ),

            SizedBox(height: 30),
            Divider(),

            //tampilan data yang disimpan
            _savedData == null
                ? Text(
                    'Belum ada data yang tersimpan.',
                    style: TextStyle(color: Colors.grey),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'data tersimpan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 8),
                      _buildDataRow('Nama', _savedData!['name']),
                      _buildDataRow('Email', _savedData!['email']),
                      _buildDataRow('Usia', _savedData!['age'].toString()),
                      _buildDataRow(
                        'Update Terakhir',
                        _savedData!['last_update'],
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  //widget helper untuk menampilkan 1 baris data
  Widget _buildDataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text('$label: ', style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
