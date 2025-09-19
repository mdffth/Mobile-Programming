import 'dart:io';

void main() {
  var setkampus = <String>{};
  var setkampus2 = <String>{};
  stdout.writeln("Masukkan jumlah setkampus : ");
  String? kmps = stdin.readLineSync();
  int jumlah = int.tryParse(kmps ?? '') ?? 0;
  for (var i = 0; i < jumlah; i++) {
    stdout.writeln("Masukkan nama kampus : ");
    String? namakampus = stdin.readLineSync();
    String kampus = namakampus ?? '';
    setkampus.add(kampus);
  }

  stdout.writeln("Masukkan jumlah setkampus2 : ");
  String? kmps2 = stdin.readLineSync();
  int jumlah2 = int.tryParse(kmps2 ?? '') ?? 0;
  for (var i = 0; i < jumlah2; i++) {
    stdout.writeln("Masukkan nama kampus : ");
    String? namakampus2 = stdin.readLineSync();
    String kampus2 = namakampus2 ?? '';
    setkampus2.add(kampus2);
  }

  print(setkampus.union(setkampus2));
  print(setkampus.intersection(setkampus2));

  print(setkampus.union(setkampus2).length);
  print(setkampus.intersection(setkampus2).length);
}
