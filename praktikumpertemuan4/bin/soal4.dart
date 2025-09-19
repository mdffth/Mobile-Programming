double _discount = 0.0;
 double discount(){
  _discount += 0.05;
  return _discount;
}
void main(){
  print(discount());
  print(discount());
  print(discount());
}