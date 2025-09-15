import 'dart:io';

void main() {
  stdout.write("Masukkan Nilai Hari : ");
  String? hari = stdin.readLineSync();
  int nilai = int.tryParse(hari ?? '') ?? 0;

  switch (nilai) {
    case 1:
      print("hari senin");
      break;
    case 2:
      print("hari selasa");
      break;
    case 3:
      print("hari rabu");
      break;
    default:
      print("Salah memasukkan nilai");
  }
}
