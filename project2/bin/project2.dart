import 'dart:io';

import 'package:project2/project2.dart' as project2;

void main(List<String> arguments) {
  // // print('Hello world: ${project2.calculate()}!');
  // var fl= List<int>.filled(4,1);
  // fl[0] = 1;
  // fl[1] = 2;
  // fl[2] = 3;
  // fl[3] = 4;

  // stdout.writeln(fl);

  // var gl = [1,2,3];
  // gl.add(4);
  // gl.remove(2);

  // stdout.writeln(gl);

  var setnilai = <String>{};
  // var setnilai2 = {3,3,4,5};

  // print(setnilai2);
  // print(setnilai.union(setnilai2));
  // print(setnilai.intersection(setnilai2));

  // stdout.writeln("Massukkan jumlah nilai : ");
  // String? nilai = stdin.readLineSync();
  // int jumlah = int.tryParse(nilai ?? '')??0;
  // for (var i = 0; i < jumlah; i++) {
  //   stdout.writeln("Mauskkan nilai ke-${i+1}: ");
  //   String? angka = stdin.readLineSync();
  //   int ank = int.tryParse(angka ?? '')??0;
  //   setnilai.add(ank);
  // }

  // print(setnilai);

  // stdout.writeln("Massukkan jumlah nilai : ");
  // String? nilai = stdin.readLineSync();
  // int jumlah = int.tryParse(nilai ?? '')??0;
  // for (var i = 0; i < jumlah; i++) {
  //   stdout.writeln("Mauskkan nilai ke-${i+1}: ");
  //   String? angka = stdin.readLineSync();
  //   String ank = angka ?? '';
  //   setnilai.add(ank);
  // }

  // var nilailist = setnilai.toList();//konversi ke list untuk bisa di acces melalui index 

  // print(nilailist[0]);

  var sudah = {
    "nim" : "2341760079", 
    "nama" : "daffa", 
    "umur" : "20", 
  };

  print(sudah);
  print(sudah["nama"]);

    var opo = {
    "nim" : ["2341760079","202","411"],
    "nama" : ["daffa","andi","koma"],
    "umur" : ["20","32","19"],
  };

  print(opo);
  print(opo["nama"]![1]);
}
