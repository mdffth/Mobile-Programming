void main() {
  // for (int i = 0; i <= 10; i++) {
  //   if(i == 5){ //memaksa berhenti pada iterasi ke 5
  //     break;
  //   }
  //   print("Iterasi ke $i");
  // }

    for (int i = 0; i <= 10; i++) {
    if(i % 2 == 0){ //malakukan skip perulangan pada bilangan genap
      continue;
    }
    print("Iterasi ke $i");
  }
}
