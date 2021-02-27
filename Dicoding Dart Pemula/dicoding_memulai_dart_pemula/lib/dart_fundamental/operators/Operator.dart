void operator() {
  print(2 + 4 * 8); // perkalian didahulukan
  print((1 + 3) * (4 - 2)); // jika ingin penjumlahan dulu gunakan parenthesis

  var a = 0, b = 5;
  a++;
  b--;
  print(a); // 1
  print(b); // 4

  var d = 2;
  d *= 3;
  print(d); // 6
}

void main() {
  operator();
}
