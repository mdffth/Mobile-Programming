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
  num nilai = 99;
  stdout.writeln("Nilai saya $nilai");
  dynamic bebas = true;
  stdout.writeln("Nilai dari dynamic adalah $bebas");

  // String angka1 = "12";
  // int angka2 = int.parse(angka1); //perlu melakukan konversi / parse
  // dynamic angka = "10";
  // int ongko = angka; // jika menggunakan dynamic tidak perlu mengkonversi 

  //List

  List<String> hobby = ["Berenang","Baca Novel"];
  hobby.add("Jalan-jalan");
  stdout.writeln("Hobby saya $hobby");

  Map<String, dynamic> data = {
    "nama" : "Fairuz",
    "Kelas" : "SIB 3B",
    "Umur" : 20,
  };
  data.addAll({"Pekerjaan":"Mahasiswa"});
  data["Kota"] = "Malang";
  stdout.writeln("Data $data");
  stdout.writeln("Nama yang ada di data ${data["nama"]}");


}
