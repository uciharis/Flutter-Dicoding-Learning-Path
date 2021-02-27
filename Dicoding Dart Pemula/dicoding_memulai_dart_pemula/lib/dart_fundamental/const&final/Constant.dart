import 'dart:io';

// const => harus sudah diketahui sebelum program dijalankan
const num pi = 3.14;

void main() {
  // final => nilainya masih bisa diinisialisasi
  final firstName = stdin.readLineSync();
  final lastName = stdin.readLineSync();

  // lastName = "dart"; tidak bisa mengubah nilai
  print('my name is $firstName $lastName');

  stdout.write('Masukan Nilai Radius : ');
  var radius = int.parse(stdin.readLineSync());
  print(
      'Luas Lingkarannya adalah $radius = ${calculatingRadiusCircles(radius)}');
}

num calculatingRadiusCircles(num radius) => pi * radius * radius;
