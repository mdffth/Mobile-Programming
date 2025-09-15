import 'dart:io';

import 'package:pertemuan3/pertemuan3.dart' as pertemuan3;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan3.calculate()}!');

  // int nilai = 75;
  stdout.write("Masukkan nilai : "); 
  String? input = stdin.readLineSync();  // Membaca inputan
  int nilai = int.tryParse(input??'') ??0; //Konversi input menjadi int, jika input null nilai defaultnya int = 0 
  if((nilai >= 75) && (nilai <=100)){
    print("Nilai A");
  } else if ((nilai >= 60) && (nilai <=74)){
    print("Nilai B");
  } else if ((nilai >=0) && (nilai <=59)){
    print("Nilai C");
  } else {
    print("Maaf, Nilai yang anda masukkan tidak benar!!");
  }

  // if biasa

  // String status;
  // if(nilai >=60){
  //   status = "Anda Lulus";
  // } else{
  //   status= "Maaf, anda belum lulus";
  // }
  // print(status);

  // Menggunakan tenary
  String status1 = (nilai>=60)? "Selamat, anda lulus" : "Maaf, anda belum lulus";
  print("status = $status1");
}
