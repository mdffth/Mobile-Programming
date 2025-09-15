import 'dart:io';

void main() {
  // while akan menguji lalu melakukan perulangan
  // int i = 11;
  // while (i <=10) {
  //   print("iterasi ke $i");
  //   i++;
  // }

  //dowhile akan melakukan perulangan terlebih dahulu lalu menguji
  print("Masukkan nilai : ");
  String? nilai = stdin.readLineSync();
  int a = int.tryParse(nilai ?? '') ?? 0;
  do {
    print("iterasi ke $a");
    a++;
  } while (a <= 10);
}
