import 'dart:io';

import 'package:project1/project1.dart' as project1;
const String nama = 'Fairuz';
void main(List<String> arguments) {
  // print('Hello world: ${project1.calculate()}!');
  // Coment
  /*multii line
    multii line 
    multii line 
  */
  // Final dan Const
  final String nama1 = 'Daffa';
  print("Nama saya $nama $nama1");

  // Variabel
  int umur = 20;
  double tinggi = 173.5;
  bool jenis_kelamin = true;
  String alamat = "Jl.Candi VB";

  stdout.writeln("Umur saya $umur tahun");
  stdout.writeln("Tinggi saya $tinggi cm");
  stdout.writeln("Jenis Kelamin ${jenis_kelamin ? "Laki-Laki" : "Perempuan"}");
  stdout.writeln("Alamat saya $alamat");



}
